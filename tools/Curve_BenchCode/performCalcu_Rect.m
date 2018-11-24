%%
function [ mPre, mRecall, mFmeasure, mHitRate , mFalseAlarm, AUC ] = ...
    performCalcu_Rect(datasetStruct,algStructArray)

evaluateSal = @(sMap,thresholds,gtMap) MSRAthresholdBased_HR_FR(sMap,thresholds,gtMap);
% switch lower(datasetStruct.datasetName)
%     case 'msra'
%         evaluateSal = @(sMap,thresholds,gtMap) MSRAthresholdBased_HR_FR(sMap,thresholds,gtMap);
%     case 'asd'
%     case 'sed1'
%     case 'sed2'
%     case 'sod'
%         %         Do nothing
%     otherwise
%         fprintf('\nPerforming analysis on unknown dataset (%s)\nMake sure that the ground-truth maps are handled correctly\n',datasetStruct.datasetName);
% end

fprintf(['\nEvaluating dataset: ' datasetStruct.datasetName '\n']);
thresholds = 1:-.05:0;
GTfiles=dir([datasetStruct.GTdir '/*.png']);
GTfiles = [GTfiles; dir([datasetStruct.GTdir '/*.jpg'])];
GTfiles = [GTfiles; dir([datasetStruct.GTdir '/*.bmp'])];

numOfFiles = size(GTfiles,1);
numOfAlgos = length(algStructArray);

[hitRate, falseAlarm] = deal(zeros(numOfFiles,length(thresholds),numOfAlgos));
[Pre, Recall] = deal(zeros(numOfFiles,length(thresholds),numOfAlgos));
[Fmeasure] = deal(zeros(numOfFiles,3,numOfAlgos));

%Iterate over images
for imIndx=1:numOfFiles
    
%      if imIndx == 5
%          break;
%      end

    fprintf('Processing image %i out of %i\n',imIndx,numOfFiles);
    [~,base_name,ext] = fileparts(GTfiles(imIndx).name);
    
    gtMap = im2double(imread([datasetStruct.GTdir base_name ext]));
    gtSize = size(gtMap);
    if (length(gtSize) == 3)
        gtMap = rgb2gray(gtMap);
        gtSize(3)= [];
    end
    gtMap = logical(gtMap>=0.5);
    totalNum = numOfFiles* ones(numOfAlgos,1);
    for algIdx = 1:numOfAlgos
        sMap = readSaliencyMap(algStructArray{algIdx},base_name,gtSize);
        if sum(sum(sMap)) == 0
            totalNum(algIdx) = totalNum(algIdx) - 1;
        end
                
        [Pre(imIndx,:,algIdx), Recall(imIndx,:,algIdx), ...        
         hitRate(imIndx,:,algIdx), falseAlarm(imIndx,:,algIdx)] ...
            = evaluateSal(sMap,thresholds,gtMap);
        
        [Fmeasure(imIndx,:,algIdx)] = Fmeasure_calu_Rect(sMap,gtMap,gtSize);
    end
    
end %End of image loop

%Average across images -
mmHitRate = permute( sum(hitRate,1),[2 3 1] );
mmFalseAlarm = permute( sum(falseAlarm,1),[2 3 1]);
mmPre = permute( sum(Pre,1),[2 3 1]);
mmRecall = permute( sum(Recall,1),[2 3 1]);
mmFmeasure = permute( sum(Fmeasure,1),[2 3 1]);
for j=1:numOfAlgos
    mmHitRate(:,j) = mmHitRate(:,j)./totalNum(j);
    mmFalseAlarm(:,j) = mmFalseAlarm(:,j)./totalNum(j);
    mmPre(:,j) = mmPre(:,j)./totalNum(j);
    mmRecall(:,j) = mmRecall(:,j)./totalNum(j);
    mmFmeasure(:,j) = mmFmeasure(:,j)./totalNum(j);
end
mHitRate = mmHitRate;
mFalseAlarm = mmFalseAlarm;
mPre = mmPre;
mRecall = mmRecall;
mFmeasure = mmFmeasure;    

AUC = nan(1,size(mFalseAlarm,2));
for algIdx=1:numOfAlgos
        AUC(algIdx) = trapz(mFalseAlarm(:,algIdx),mHitRate(:,algIdx));
end

end


% Read and resize saliency map
function sMap = readSaliencyMap(algStruct,base_name,gtSize)
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


% function [Pre, Recall, hitRate, falseAlarm] ...
%     = thresholdBased_HR_FR(sMap,thresholds,gtMap)
% numOfThreshs = length(thresholds);
% [Pre, Recall, hitRate, falseAlarm] = deal(zeros(1,numOfThreshs));
% for threshIdx=1:numOfThreshs
%     cThrsh=thresholds(threshIdx);    
%     [Pre(threshIdx), Recall(threshIdx), hitRate(threshIdx), falseAlarm(threshIdx)] ...
%         = Pre_Recall_hitRate((sMap>=cThrsh),gtMap);    
% end
% end

function [Pre, Recall, hitRate, falseAlarm]...
    = MSRAthresholdBased_HR_FR(sMap,thresholds,gtMap)
numOfThreshs = length(thresholds);
[Pre, Recall, hitRate, falseAlarm] = deal(zeros(1,numOfThreshs));

for threshIdx=1:numOfThreshs
    cThrsh=thresholds(threshIdx);
    STATS = regionprops(uint8(sMap>=cThrsh),'BoundingBox');
    bMap = zeros(size(sMap));
    bbox = round([STATS.BoundingBox]);
    if (numel(bbox)>0)
        bMap(bbox(2):(bbox(2)+bbox(4)-1),bbox(1):(bbox(1)+bbox(3)-1))=1;
    end
    [Pre(threshIdx), Recall(threshIdx), hitRate(threshIdx) , falseAlarm(threshIdx)] = Pre_Recall_hitRate(bMap,gtMap);    
end
end

