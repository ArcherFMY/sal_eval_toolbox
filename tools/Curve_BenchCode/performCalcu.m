%%
function Metrics = ...
    performCalcu(datasetStruct,algStructArray) 

evaluateSal = @(sMap,thresholds,gtMap) thresholdBased_HR_FR(sMap,thresholds,gtMap);

thresholds = [255:-1:0]/255;         % thresholding image from 0 - 255
GTfiles=dir([datasetStruct.GTdir '/*.png']); % gather the GT files in png
GTfiles = [GTfiles; dir([datasetStruct.GTdir '/*.jpg'])]; % gather the GT files in jpg
GTfiles = [GTfiles; dir([datasetStruct.GTdir '/*.bmp'])]; % gather the GT files in bmp

numOfFiles = size(GTfiles,1); % totalImgNum*1
numOfAlgos = length(algStructArray);  % num of algorithmos to be evaluated

[hitRate, falseAlarm] = deal(zeros(numOfFiles,length(thresholds),numOfAlgos));%

%% initial

[IoU, TPR, FPR, Pre, Recall] = deal(zeros(numOfFiles,length(thresholds),numOfAlgos));

[mean_Fmeasure] = deal(zeros(numOfFiles,3,numOfAlgos)); % totalImgNum*3*numOfAlgos [precision, recall, fmeasure]

[MAE] = deal(zeros(numOfFiles,1,numOfAlgos)); % totalImgNum*1*numOfAlgos

[S_measure] = deal(zeros(numOfFiles,1,numOfAlgos)); % totalImgNum*1*numOfAlgos

%Iterate over images
hwait  = waitbar(0,['Processing ', num2str(numOfFiles),' images on ',datasetStruct.datasetName,': 0%']);

for imIndx=1:numOfFiles  
    % read the ground truth files
    [~,base_name,ext] = fileparts(GTfiles(imIndx).name); 
    
    gtMap = im2double(imread([datasetStruct.GTdir base_name ext]));
    gtSize = size(gtMap); 
    if (length(gtSize) == 3)
        gtMap = rgb2gray(gtMap);
        gtSize(3)= [];
    end
    
    
    gtMap = logical(gtMap>=0.1); % get binary mask
    totalNum = numOfFiles* ones(numOfAlgos,1); %3*1   ( [totalImgNum;totalImgNum;totalImgNum;totalImgNum] ) 
    for algIdx = 1:numOfAlgos % compute over each algorithms iteratively
        sMap = readSaliencyMap(algStructArray{algIdx},[base_name],gtSize);% read and resize saliency maps
        if sum(sum(sMap)) == 0
            totalNum(algIdx) = totalNum(algIdx) - 1;
        end
        
        [IoU(imIndx,:,algIdx), TPR(imIndx,:,algIdx), FPR(imIndx,:,algIdx), Pre(imIndx,:,algIdx), Recall(imIndx,:,algIdx), ...        % calculate IoU, TPR, FPR, Pre, Recall, hitRate, falseAlarm
         hitRate(imIndx,:,algIdx), falseAlarm(imIndx,:,algIdx)] ...
            = evaluateSal(sMap,thresholds,gtMap);
        
        [mean_Fmeasure(imIndx,:,algIdx)] = Fmeasure_calu(sMap,gtMap,gtSize); % calculate F-measure using 2 x MeanValueOfSalMap [precision,recall,fmeasure]

        MAE(imIndx,:,algIdx) = CalMAE(sMap, gtMap); % clculate MAE

        S_measure(imIndx,:,algIdx) = StructureMeasure(sMap, gtMap); % calculate S-measure

    end
    pct     = sprintf('%5.1f',imIndx/numOfFiles*100);
    waitbar(imIndx/numOfFiles,hwait,['Processing ', num2str(numOfFiles),...
        ' images on ',datasetStruct.datasetName,': ',pct,'%']); 
end %End of image loop

close(hwait);
%Average across images -
mmHitRate = permute( sum(hitRate,1),[2 3 1] );
mmFalseAlarm = permute( sum(falseAlarm,1),[2 3 1]);

nanind = isnan(Pre);
Pre(nanind) = 0;
mmPre = permute( sum(Pre,1),[2 3 1]);  
mmRecall = permute( sum(Recall,1),[2 3 1]);
mmTPR = permute( sum(TPR,1),[2 3 1]);
mmFPR = permute( sum(FPR,1),[2 3 1]);
mmIoU = permute( sum(IoU,1),[2 3 1]);

mmmean_Fmeasure = permute( sum(mean_Fmeasure,1),[2 3 1]);
mmMAE = zeros(1,numOfAlgos);
mmS_measure = zeros(1,numOfAlgos);

for j=1:numOfAlgos
    nanind = isnan(MAE(:,1,j));
    mmmMAE = MAE(:,1,j);
    mmmMAE(nanind) = [];
    
    nanind = isnan(S_measure(:,1,j));
    mmmS_measure = S_measure(:,1,j);
    mmmS_measure(nanind) = [];
    
    mmHitRate(:,j) = mmHitRate(:,j)./totalNum(j);
    mmFalseAlarm(:,j) = mmFalseAlarm(:,j)./totalNum(j);
    mmPre(:,j) = mmPre(:,j)./totalNum(j);
    mmRecall(:,j) = mmRecall(:,j)./totalNum(j);
    mmTPR(:,j) = mmTPR(:,j)./totalNum(j);
    mmFPR(:,j) = mmFPR(:,j)./totalNum(j);
    mmIoU(:,j) = mmIoU(:,j)./totalNum(j);
    
    mmmean_Fmeasure(:,j) = mmmean_Fmeasure(:,j)./totalNum(j);
    mmMAE(:,j) = mean(mmmMAE,1);
    mmS_measure(:,j) = mean(mmmS_measure,1);
end
Metrics.HitRate = mmHitRate;
Metrics.FalseAlarm = mmFalseAlarm;
Metrics.Pre = mmPre;
Metrics.Recall = mmRecall;
Metrics.TPR = mmTPR;
Metrics.FPR = mmFPR;
Metrics.IoU = mmIoU;

Metrics.mean_Fmeasure = mmmean_Fmeasure;    
Metrics.MAE = mmMAE; 
Metrics.S_measure = mmS_measure;
Metrics.AUC = nan(1,size(Metrics.FalseAlarm,2));
for algIdx=1:numOfAlgos
        Metrics.AUC(algIdx) = trapz(Metrics.FalseAlarm(:,algIdx),Metrics.HitRate(:,algIdx));
end

Metrics.mean_Fmeasure_image = mean_Fmeasure;
Metrics.MAE_image = MAE;
Metrics.S_measure_image = S_measure;
Metrics.TPR_image = TPR;
Metrics.FPR_image = FPR;
Metrics.Pre_image = Pre;
Metrics.Recall_image = Recall;

Metrics.Fmeasure_Curve                  = (1+0.3).*Metrics.Pre.*Metrics.Recall./...
                                            (0.3*Metrics.Pre+Metrics.Recall);
[Metrics.MaxFmeasure, ind]              = max(Metrics.Fmeasure_Curve, [], 1);
Metrics.IoU_at_maxF                     = Metrics.IoU(ind);
[Metrics.maxIoU, ~]                     = max(Metrics.IoU, [], 1);
Metrics.meanIoU                         = mean(Metrics.IoU, 1);
end



%% Read Saliency Maps

% Read and resize saliency map
function sMap = readSaliencyMap(algStruct,base_name,gtSize)
if strcmp(algStruct.dir(end-3:end),'DSR')
    algStruct.ext='jpg';
elseif strcmp(algStruct.dir(end-12:end-10),'DSR')
    algStruct.ext='jpg';
end
file_name = fullfile(algStruct.dir,[algStruct.prefix base_name algStruct.postfix '.' algStruct.ext]);
sMap = imresize(im2double(imread(file_name)),gtSize(1:2));
if (size(sMap,3)==3)
    sMap = rgb2gray(sMap);
end
sMap(sMap<0)=0;
maxnum = max(sMap(:));
if maxnum==0
    sMap = zeros(gtSize(1:2));
else
    sMap = sMap./maxnum;
end  

end

%% Calculate the scores
function [IoU, TPR, FPR, Pre, Recall, hitRate, falseAlarm] ...
    = thresholdBased_HR_FR(sMap,thresholds,gtMap) %calculate the threshold based scores
    gtPxlNum = sum(gtMap(:));
    totalNum = size(gtMap,1)*size(gtMap,2);
    targetHist = histc(sMap(gtMap), fliplr(thresholds));
    nontargetHist = histc(sMap(~gtMap), fliplr(thresholds));

    targetHist = flipud(targetHist);
    nontargetHist = flipud(nontargetHist);

    targetHist = cumsum( targetHist );
    nontargetHist = cumsum( nontargetHist );

    Pre = targetHist ./ (targetHist + nontargetHist);
    Recall = targetHist / gtPxlNum;
    TPR = Recall;
    FPR = nontargetHist / (totalNum-gtPxlNum);
    IoU = targetHist ./ (gtPxlNum + nontargetHist);
    hitRate = targetHist / gtPxlNum;
    falseAlarm = 1 - (repmat(totalNum-gtPxlNum,size(nontargetHist)) - nontargetHist)/(totalNum-gtPxlNum);
end
%%