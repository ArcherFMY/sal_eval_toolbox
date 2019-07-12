clc;clear;close all;

%% ------------ setup function paths------------
% setup the additional path
addpath( './Curve_BenchCode');

%% ------------ setup the dataset under evaluation ------------
Dataset.datasetName = 'DUTS';
gtMapThreshold = 0.5;  % 原始作者使用的阈值是0.1，这里提取出来作为可设置的参数
fprintf('Executing dataset: \n-----Name: %s\n', Dataset.datasetName);
fprintf('-----GtMap threshold: %.2f\n', gtMapThreshold)

% setup the ground truth paths，根据实际情况设置，注意要加路径分隔符
Dataset.GTdir = ['/home/lart/Datasets/RGBSaliency/',Dataset.datasetName,'/Test/Mask/'];
fprintf('-----Number of Images: %d\n', length(dir([Dataset.GTdir,'*']))-2);

% setup the path to save the results
Dataset.savedir                         = [ './Results/' , Dataset.datasetName , '/' ];
if ~exist(Dataset.savedir,'dir')
    mkdir(Dataset.savedir);
end

%% ------------ select some results to evaluate ------------
set_format = false;
[alg_params, runNum, path, cancel]...
                                = select_Alg(Dataset.datasetName, set_format);
if cancel == 1
    plotMetrics = 'User canceled during selecting new algorithms to evaluate!\n';
    return;
end

%% ------------ evaluate the results ------------
metrics                         = {};
if runNum ~= 0
    alg_dir_struct              = candidateAlgStructure( alg_params,path );

    % perform evaluation
    fprintf('\nPerforming evaluations...\n');
    metrics                     = performCalcu(Dataset, alg_dir_struct, gtMapThreshold);

    % save the resuls
    savematfiles(metrics,alg_params,Dataset.savedir);
    fprintf('\nResults are saved in %s\n', Dataset.savedir);
end
