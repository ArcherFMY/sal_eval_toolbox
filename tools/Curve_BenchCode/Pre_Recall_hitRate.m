function [TPR, FPR, Pre, Recall, hitRate , falseAlarm] = Pre_Recall_hitRate(testMap,gtMap)
%testMap：输入图像与阈值比较后的逻辑矩阵
%gtMap：真值逻辑矩阵
%输出：
neg_gtMap = ~gtMap; %取相反数
neg_testMap = ~testMap;

hitCount = sum(sum(testMap.*gtMap));%二值分割后的图像中占真值中的元素（1）的个数（交）
trueAvoidCount = sum(sum(neg_testMap.*neg_gtMap));%既不属于真值也不属于二值后的图像的元素的个数（1）
missCount = sum(sum(testMap.*neg_gtMap));%二值分割后图像中错分的1的个数
falseAvoidCount = sum(sum(neg_testMap.*gtMap));%二值后，真值中没有没检测到的个数

if hitCount==0
    Pre = 0;
    Recall = 0;
else
    Pre = hitCount/(hitCount + missCount );
    Recall = hitCount/(hitCount + falseAvoidCount);
end

TPR = Recall;
FPR = missCount/(trueAvoidCount + missCount);
falseAlarm = 1 - trueAvoidCount / (eps+trueAvoidCount + missCount);
hitRate = hitCount / (eps+ hitCount + falseAvoidCount);
end





