function [mHitRate , mFalseAlarm, AUC] = performBenchmark(datasetStruct,algStructArray)

evaluateSal = @(sMap,thresholds,gtMap) thresholdBased_HR_FR(sMap,thresholds,gtMap);
switch lower(datasetStruct.datasetName)
    case 'msra'
        evaluateSal = @(sMap,thresholds,gtMap) MSRAthresholdBased_HR_FR(sMap,thresholds,gtMap);
    case 'asd'
    case 'sed1'
    case 'sed2'
    case 'sod'
        %         Do nothing
    otherwise
        fprintf('\nPerforming analysis on unknown dataset (%s)\nMake sure that the ground-truth maps are handled correctly\n',datasetStruct.datasetName);
end


fprintf(['\nEvaluating dataset: ' datasetStruct.datasetName '\n']);
thresholds = 1:-.05:0;
GTfiles=dir([datasetStruct.GTdir '/*.png']);
GTfiles = [GTfiles; dir([datasetStruct.GTdir '/*.jpg'])];
GTfiles = [GTfiles; dir([datasetStruct.GTdir '/*.bmp'])];

numOfFiles = size(GTfiles,1);
numOfAlgos = length(algStructArray);

[hitRate, falseAlarm] = deal(zeros(numOfFiles,length(thresholds),numOfAlgos));
%Iterate over images
for imIndx=1:numOfFiles
    
%     if imIndx == 3
%         break;
%     end
    
    fprintf('Processing image %i out of %i\n',imIndx,numOfFiles);
    [~,base_name,ext] = fileparts(GTfiles(imIndx).name);
    
    gtMap = im2double(imread([datasetStruct.GTdir base_name ext]));
    gtSize = size(gtMap);
    if (length(gtSize) == 3)
        gtMap = rgb2gray(gtMap);
        gtSize(3)= [];
    end
    gtMap = double(gtMap>=0.1);
    for algIdx = 1:numOfAlgos
        sMap = readSaliencyMap(algStructArray(algIdx),base_name,gtSize);
        [hitRate(imIndx,:,algIdx), falseAlarm(imIndx,:,algIdx)] = evaluateSal(sMap,thresholds,gtMap);
    end
    
end %End of image loop

%Average across images -
mHitRate = permute(mean(hitRate,1),[2 3 1]);
mFalseAlarm = permute(mean(falseAlarm,1),[2 3 1]);

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
sMap = sMap./max(sMap(:));
sMap(sMap<0)=0;
end


function [hitRate, falseAlarm] = thresholdBased_HR_FR(sMap,thresholds,gtMap)
numOfThreshs = length(thresholds);
[hitRate, falseAlarm] = deal(zeros(1,numOfThreshs));
for threshIdx=1:numOfThreshs
    cThrsh=thresholds(threshIdx);
    [hitRate(threshIdx) , falseAlarm(threshIdx)] = hitRates((sMap>=cThrsh),gtMap);
end
end


function [hitRate, falseAlarm] = MSRAthresholdBased_HR_FR(sMap,thresholds,gtMap)
numOfThreshs = length(thresholds);
[hitRate, falseAlarm] = deal(zeros(1,numOfThreshs));

for threshIdx=1:numOfThreshs
    cThrsh=thresholds(threshIdx);
    STATS = regionprops(uint8(sMap>=cThrsh),'BoundingBox');
    bMap = zeros(size(sMap));
    bbox = round([STATS.BoundingBox]);
    if (numel(bbox)>0)
        bMap(bbox(2):(bbox(2)+bbox(4)-1),bbox(1):(bbox(1)+bbox(3)-1))=1;
    end
    [hitRate(threshIdx) , falseAlarm(threshIdx)] = hitRates(bMap,gtMap);    
end
end



