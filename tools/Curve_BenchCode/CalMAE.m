function mae = CalMAE(smap, gtImg)
% Code Author: Wangjiang Zhu
% Email: wangjiang88119@gmail.com
% Date: 3/24/2014
[m,n,~] = size(gtImg);
smap = im2double(smap(:,:,1));
smap = imresize(smap,[m,n]);
smap = (smap-min(smap(:)))/(max(smap(:))-min(smap(:)));

if size(smap, 1) ~= size(gtImg, 1) || size(smap, 2) ~= size(gtImg, 2)
    error('Saliency map and gt Image have different sizes!\n');
end

if ~islogical(gtImg)
    gtImg = gtImg(:,:,1) > 128;
end

fgPixels = smap(gtImg);
fgErrSum = length(fgPixels) - sum(fgPixels);
bgErrSum = sum(smap(~gtImg));
mae = (fgErrSum + bgErrSum) / numel(gtImg);