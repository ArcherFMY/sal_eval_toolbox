function savematfiles(Metrics,alg_params,savedir)

for i = 1 : size(alg_params,1)
    name = alg_params{i,1};
    TPR = Metrics.TPR(:,i);
    FPR = Metrics.FPR(:,i);
    IoU = Metrics.IoU(:,i);
    Pre = Metrics.Pre(:,i);
    Recall = Metrics.Recall(:,i);
    mean_Fmeasure = Metrics.mean_Fmeasure(:,i);
    HitRate = Metrics.HitRate(:,i);
    FalseAlarm = Metrics.FalseAlarm(:,i);
 
    
    AUC = Metrics.AUC(:,i);
    MAE = Metrics.MAE(i);
    S_measure = Metrics.S_measure(i);
    
    MAE_image = Metrics.MAE_image(:,i);
    S_measure_image = Metrics.S_measure_image(:,i);
    mean_Fmeasure_image = Metrics.mean_Fmeasure_image(:,:,i);
    TPR_image = Metrics.TPR_image(:,:,i);
    FPR_image = Metrics.FPR_image(:,:,i);
    Pre_image = Metrics.Pre_image(:,:,i);
    Recall_image = Metrics.Recall_image(:,:,i);
    Fmeasure_Curve = Metrics.Fmeasure_Curve(:,i);
    MaxFmeasure = Metrics.MaxFmeasure(i);
    IoU_at_maxF = Metrics.IoU_at_maxF(i);
    maxIoU      = Metrics.maxIoU(i);
    meanIoU     = Metrics.meanIoU(i);
    
    save([savedir,name],'TPR','FPR','IoU', 'Pre','Recall','mean_Fmeasure','HitRate',...
        'FalseAlarm','AUC','MAE', 'S_measure', 'MAE_image', 'S_measure_image', 'mean_Fmeasure_image',...
        'TPR_image', 'FPR_image', 'Pre_image', 'Recall_image',...
        'Fmeasure_Curve', 'MaxFmeasure', 'IoU_at_maxF', 'maxIoU', 'meanIoU');
end