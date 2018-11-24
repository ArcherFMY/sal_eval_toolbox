clc;clear;close all;
%% ------------ setup function paths------------
% setup the additional path
addpath( './Curve_BenchCode');

%% ------------ setup the dataset under evaluation ------------
Dataset.datasetName = 'SOD';
fprintf('Executing dataset: \n-----Name: %s\n', Dataset.datasetName);

% setup the ground truth paths
Dataset.GTdir = ['./GroundTruth/',Dataset.datasetName,'/'];
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
    metrics                     = performCalcu(Dataset,alg_dir_struct);

    % save the resuls
    savematfiles(metrics,alg_params,Dataset.savedir);
    fprintf('\nResults are saved in %s\n', Dataset.savedir);
end