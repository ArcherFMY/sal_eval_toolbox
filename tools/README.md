# Evaluation Scripts for Salient Object Detection
The repo contains **Matlab** script to evaluate salient object detection algorithms.

## Install

```
git clone https://github.com/ArcherFMY/sal_eval_toolbox.git
```

## HOW TO USE

_The code should be easy to use._ It allows any numbers of algorithms to be evaluated on a single dataset at one time.

Just run `evaluate_models.m` in matlab


### setup the dataset

```
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
```
You can change `Dataset.GTdir` to `/path/to/your/GTfiles/` where your ground truth are. 

The default folder to save the results is `Dataset.savedir`

### select results to be evaluate

```
set_format = false;
[alg_params, runNum, path, cancel]...
                                = select_Alg(Dataset.datasetName, set_format);
if cancel == 1
    plotMetrics = 'User canceled during selecting new algorithms to evaluate!\n';
    return;
end
```
The function `select_Alg` allows users to open the folder that contains the results of algorithms to be evaluated. The default folder is `./SaliencyMaps/Datasetname/`. If you put the results in the default folder, just click 'open'.

It also allows user to set the name format of saliency maps, such as _prefix_, _postfix_, and _ext_ (It looks like: '_prefix_ NameOfImage _postfix_ ._ext_'). Set `set_format=true` to use it. Default is 'NameOfImage.png', i.e. _prefix_='', _postfix_='', _ext_='png'.

### evaluate the results

```
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
```

You can load the `.mat` files to draw the curves you need.

 Metrics:

- [x] Pre
- [x] Recall
- [x] mean F-measure and the corresponding precision and reall
- [x] S-measure
- [x] MAE
- [x] F-measure Curve
- [x] max F-measure
- [x] IoU Curve
- [x] IoU at max F-measure
- [x] max IoU
- [x] mean IoU

## Cite This Repo

**If you find this code useful in your research, please consider citing:**

```

@article{sal_eval_toolbox,
    Author = {Mengyang Feng},
    Title = {Evaluation Toolbox for Salient Object Detection.},
    Journal = {https://github.com/ArcherFMY/sal_eval_toolbox},
    Year = {2018}
}
```
