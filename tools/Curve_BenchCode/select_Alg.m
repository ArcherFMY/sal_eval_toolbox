function [alg_params, runNum, path, cancel]       = select_Alg(Dataset, set_format)
              
    path                        = ['./SaliencyMaps/', Dataset, '/']; 
    path                        = [ uigetdir(path,'Select the Path of the New Alogrithms'),'/'];
    new_method_names            = dir(path);
    new_method_names            = {new_method_names(3:end).name}';
    [new_method_namesInd, ok]   = listdlg('liststring',new_method_names,...  
                            'listsize',[500 180],'OkString','OK','CancelString','Cancel',...  
                            'promptstring','New Algorithms','name',...
                            'Select New Alogrithms to be Evaluated (Multiple Choice)',...
                            'selectionmode','multiple');
    if ok == 0
        fprintf( 'Aborted!\n' );
        cancel = true;
        path                        = [];
        alg_params                  = {};
        runNum                      = 0;
        return;
    else
        new_method_names            = {new_method_names{new_method_namesInd}}';
    end
    runNum                      = size(new_method_names,1);
    alg_params         = {};
    fprintf('\nSelecting...\n');
    for new_ind = 1 : runNum
        if set_format == 1
            temp = inputdlg({'Name','Prefix','Postfix','Ext'},...
                        'Set Image Format',1,{new_method_names{new_ind},'','','png'});
            alg_params = [alg_params;temp'];
        else
            temp = {new_method_names{new_ind},'','','png'};
            alg_params = [alg_params;temp];
        end
        if size(temp) ~= 0
            fprintf('-----%02d  %s  Selected!\n', new_ind, new_method_names{new_ind});
        end
    end
    runNum                      = size(alg_params,1);
    cancel                      = false;