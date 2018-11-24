function [Dataset, ok]   = set_up_dataset

    filenames               = dir('./GroundTruth/');
    filenames               = {filenames(3:end).name}';
    [DatasetInd, ok]        = listdlg('liststring',filenames,...  
        'listsize',[300 180],'OkString','OK','CancelString','Cancel',...  
        'promptstring','Dataset','name','Select Dataset (Single Choice)','selectionmode','single');
    if ok == 0
        Dataset             = [];
    else
        Dataset             = filenames{DatasetInd};
        fprintf(['Dataset:        ',Dataset,'\n']);
    end