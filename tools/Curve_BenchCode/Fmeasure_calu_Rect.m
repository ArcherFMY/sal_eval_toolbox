%%
function Fmeasure = Fmeasure_calu_Rect(sMap,gtMap,gtsize)
sumLabel =  2* mean(sMap(:)) ;
if ( sumLabel > 1 )
    sumLabel = 1;
end
STATS = regionprops(uint8(sMap>=sumLabel),'BoundingBox');
Label3 = zeros( gtsize );
bbox = round([STATS.BoundingBox]);
if (numel(bbox)>0)
    Label3(bbox(2):(bbox(2)+bbox(4)-1),bbox(1):(bbox(1)+bbox(3)-1))=1;
end

NumRec = length( find( Label3==1 ) );
LabelAnd = Label3 & gtMap;
NumAnd = length( find ( LabelAnd==1 ) );
num_obj = sum(sum(gtMap));

if NumAnd == 0
    PreFtem = 0;
    RecallFtem = 0;
    FmeasureF = 0;
else
    PreFtem = NumAnd/NumRec;
    RecallFtem = NumAnd/num_obj;
    FmeasureF = ( ( 1.3* PreFtem * RecallFtem ) / ( .3 * PreFtem + RecallFtem ) );
end

Fmeasure = [PreFtem, RecallFtem, FmeasureF];

 
    