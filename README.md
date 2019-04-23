# Evaluation Toolbox for Salient Object Detection 
To use this toolbox, read [README.md](./tools/README.md) in folder 'tools'.

## Datasets [[citations]](#benchmarks)
- ECSSD  [`link`](http://www.cse.cuhk.edu.hk/leojia/projects/hsaliency/dataset.html)
- PASCAL-S  [`link`](http://cbi.gatech.edu/salobj/#download)
- DUT-OMRON  [`link`](http://saliencydetection.net/dut-omron/)
- HKU-IS  [`link`](https://i.cs.hku.hk/~gbli/deep_saliency.html)
- DUTS  [`link`](http://saliencydetection.net/duts/)
- SOD  [`link`](http://elderlab.yorku.ca/SOD/)
- SOS  [`link`](http://cs-people.bu.edu/jmzhang/sos.html)
- THUR  [`link`](http://mmcheng.net/code-data/)
- MSRA10K  [`link`](https://mmcheng.net/msra10k/)
- SED  [`link`](http://www.wisdom.weizmann.ac.il/~vision/Seg_Evaluation_DB/dl.html)

## Methods [[citations]](#algorithms)
Only fully supervised Deep Learning based methods are included.

NOTE: please see my another [repo](https://github.com/ArcherFMY/Paper_Reading_List/blob/master/Image-01-Salient-Object-Detection.md) to get the papers.

<body>
  <table>
<p>2019</p>
    <tr>
      <th>Method Name</th>
      <td align="center">AFNet</td>
    </tr>
   <tr>
      <th>Platform</th>
      <td align="center">Caffe</td>
    </tr>
    <tr>
      <th>Model Size</th>
      <td align="center">143.9</td>
    </tr>
  </table>
  </body>

<body>
  <table>
<p>2018</p>
    <tr>
      <th>Method Name</th>
      <td align="center">BMPM</td>
      <td align="center">DGRL</td>
      <td align="center">PAGR</td>
      <td align="center">RAS</td>
      <td align="center">PiCANet</td>
      <td align="center">R3Net</td>
    </tr>
   <tr>
      <th>Platform</th>
      <td align="center">Tensorflow</td>
      <td align="center">Caffe</td>
      <td align="center">Caffe</td>
      <td align="center">Caffe</td>
      <td align="center">Caffe</td>
      <td align="center">PyTorch</td>
    </tr>
    <tr>
      <th>Model Size</th>
      <td align="center">-</td>
      <td align="center">648.0 MB</td>
      <td align="center">-</td>
      <td align="center">81.0 MB</td>
      <td align="center">153.3/197.2 MB (VGG/Res50) </td>
      <td align="center">225.3 MB</td>
    </tr>
  </table>
  </body>

<body>
  <table>
<p>2017</p>
    <tr>
      <th>Method Name</th>
      <td align="center">Amulet</td>
      <td align="center">UCF</td>
      <td align="center">SRM</td>
      <td align="center">MSRNet</td>
      <td align="center">NLDF</td>
      <td align="center">DSS</td>
    </tr>
   <tr>
      <th>Platform</th>
      <td align="center">Caffe</td>
      <td align="center">Caffe</td>
      <td align="center">Caffe</td>
      <td align="center">Caffe</td>
      <td align="center">Tensorflow</td>
      <td align="center">Caffe</td>
    </tr>
    <tr>
      <th>Model Size</th>
      <td align="center">132.6 MB</td>
      <td align="center">117.9 MB</td>
      <td align="center">213.1 MB</td>
      <td align="center">331.8 MB</td>
      <td align="center">425.9 MB </td>
      <td align="center">447.3 MB</td>
    </tr>
  </table>
  </body>

<body>
  <table>
<p>2016</p>
    <tr>
      <th>Method Name</th>
      <td align="center">RFCN</td>
      <td align="center">SCSD-HS</td>
      <td align="center">DS</td>
      <td align="center">ELD</td>
      <td align="center">DCL</td>
      <td align="center">DHS</td>
    </tr>
   <tr>
      <th>Platform</th>
      <td align="center">Caffe</td>
      <td align="center">Caffe</td>
      <td align="center">Caffe</td>
      <td align="center">Caffe</td>
      <td align="center">Caffe</td>
      <td align="center">Caffe</td>
    </tr>
    <tr>
      <th>Model Size</th>
      <td align="center">1126.4 MB</td>
      <td align="center">-</td>
      <td align="center">537.1 MB</td>
      <td align="center">667.2 MB</td>
      <td align="center">265.0 MB </td>
      <td align="center">376.2 MB</td>
    </tr>
  </table>
  </body>
  
<body>
  <table>
<p>2015</p>
    <tr>
      <th>Method Name</th>
      <td align="center">LEGS</td>
      <td align="center">MCDL</td>
      <td align="center">MDF</td>
    </tr>
   <tr>
      <th>Platform</th>
      <td align="center">Caffe</td>
      <td align="center">Caffe</td>
      <td align="center">Caffe</td>
    </tr>
    <tr>
      <th>Model Size</th>
      <td align="center">73.6 MB</td>
      <td align="center">233.1 MB</td>
      <td align="center">330.8 MB</td>
    </tr>
  </table>
  </body>
  
## Table
All saliency maps are provided by the authors or calculated using their released codes.

### ECSSD

> pre-computed saliency maps [[BaiduYun]](https://pan.baidu.com/s/1V0VHa0K1wueXKAmseD2vEQ)

> pre-computed `.mat` files [[BaiduYun]](dd) (please contact me if you need this)

|Methods | year | max F-measure | mean F-measure | MAE | [S-measure](https://github.com/DengPingFan/S-measure) | IoU(@ max Fm) | mean IoU | max IoU |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| AFNet | 2019     |.935|.908|.042|.914|.839|.835|.857|
| BMPM | 2018     |.929|.869|.045|.911|.838|.821|.854|
| DGRL | 2018     |.922|.906|.041|.903|.830|.838|.846|
| PAGR | 2018     |.927|.894|.061|.889|.806|.770|.825|
| RAS | 2018      |.921|.889|.056|.893|.808|.792|.823|
| PiCANet | 2018  |.931|.884|.047|.914|.827|.812|.853|
| PiCANet-C| 2018 |.932|.913|.036|.910|.844|.850|.858|
| R3Net | 2018    |.931|.917|.046|.900|.831|.825|.850|
| Amulet | 2017   |.915|.870|.059|.894|.800|.787|.822|
| UCF | 2017      |.911|.840|.078|.883|.785|.745|.812|
| SRM | 2017      |.917|.892|.054|.895|.796|.783|.824|
| MSRNet | 2017   |.911|.839|.054|.896|.790|.791|.820|
| NLDF | 2017     |.905|.878|.063|.875|.773|.766|.798|
| DSS | 2017      |.916|.901|.052|.882|.796|.803|.816|
| RFCN | 2016     |.890|.834|.107|.852|.740|.645|.763|
| SCSD-HS | 2016  |.865|.719|.192|.773|.707|.569|.745|
| DS | 2016       |.882|.826|.122|.821|.726|.552|.755|
| ELD | 2016      |.867|.810|.079|.839|.699|.709|.727|
| DCL | 2016      |.890|.829|.088|.828|.748|.646|.777|
| DHS | 2016      |.907|.872|.059|.884|.779|.773|.805|
| LEGS | 2015     |.827|.785|.118|.787|.656|.574|.678|
| MCDL | 2015     |.837|.796|.101|.803|.656|.615|.688|
| MDF | 2015      |.832|.807|.105|.776|.641|.599|.682|

### PASCAL-S

> pre-computed saliency maps [[BaiduYun]](https://pan.baidu.com/s/1trqJcCDSNNn08Dr6t_45Dw)

> pre-computed `.mat` files [[BaiduYun]](dd) (please contact me if you need this)

|Methods | year | max F-measure | mean F-measure | MAE | [S-measure](https://github.com/DengPingFan/S-measure) | IoU(@ max Fm) | mean IoU | max IoU |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| AFNet | 2019    |.868|.826|.071|.850|.736|.743|.760|
| BMPM | 2018    |.862|.769|.074|.845|.732|.728|.753|
| DGRL | 2018    |.854|.825|.072|.836|.736|.742|.747|
| PAGR | 2018    |.856|.807|.093|.818|.690|.664|.713|
| RAS | 2018     |.837|.785|.104|.795|.658|.654|.676|
| PiCANet | 2018 |.868|.801|.077|.850|.732|.725|.760|
| PiCANet-C| 2018|.867|.833|.067|.843|.736|.757|.763|
| R3Net | 2018   |.845|.807|.097|.800|.675|.677|.697|
| Amulet | 2017  |.837|.768|.098|.820|.690|.687|.717|
| UCF | 2017     |.828|.706|.126|.803|.664|.639|.695|
| SRM | 2017     |.847|.801|.085|.832|.695|.688|.724|
| MSRNet | 2017  |.855|.744|.081|.840|.699|.707|.734|
| NLDF | 2017    |.831|.779|.099|.803|.653|.664|.686|
| DSS | 2017     |.836|.804|.096|.797|.666|.676|.687|
| RFCN | 2016    |.837|.751|.118|.808|.649|.587|.674|
| SCSD-HS | 2016 |.779|.589|.220|.715|.584|.490|.624|
| DS | 2016      |.765|.659|.176|.739|.564|.451|.614|
| ELD | 2016     |.773|.718|.123|.757|.558|.586|.605|
| DCL | 2016     |.805|.714|.125|.754|.626|.558|.665|
| DHS | 2016     |.829|.779|.094|.807|.659|.660|.688|
| LEGS | 2015    |.762|.704|.155|.725|.544|.493|.588|
| MCDL | 2015    |.743|.691|.145|.719|.533|.497|.565|
| MDF | 2015     |.768|.709|.146|.692|.541|.479|.585|

### DUT-OMRON

> pre-computed saliency maps [[BaiduYun]](https://pan.baidu.com/s/1mDA7R5K-hr-mfGZi0FsEfw)

> pre-computed `.mat` files [[BaiduYun]](dd) (please contact me if you need this)

|Methods | year | max F-measure | mean F-measure | MAE | [S-measure](https://github.com/DengPingFan/S-measure) | IoU(@ max Fm) | mean IoU | max IoU |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| AFNet | 2019    |.797|.738|.057|.826|.653|.660|.682|
| BMPM | 2018    |.774|.692|.064|.809|.632|.627|.654|
| DGRL | 2018    |.774|.733|.062|.806|.640|.649|.657|
| PAGR | 2018    |.771|.711|.071|.775|.586|.555|.611|
| RAS | 2018     |.786|.713|.062|.814|.638|.633|.660|
| PiCANet | 2018 |.794|.710|.068|.826|.657|.640|.682|
| PiCANet-C| 2018|.784|.751|.057|.815|.647|.668|.675|
| R3Net | 2018   |.792|.756|.061|.815|.642|.661|.674|
| Amulet | 2017  |.742|.647|.098|.780|.594|.589|.622|
| UCF | 2017     |.734|.613|.132|.758|.580|.545|.608|
| SRM | 2017     |.769|.707|.069|.797|.605|.585|.634|
| MSRNet | 2017  |.782|.676|.073|.808|.616|.618|.648|
| NLDF | 2017    |.753|.684|.080|.770|.562|.562|.593|
| DSS | 2017     |.771|.729|.066|.788|.605|.617|.629|
| RFCN | 2016    |.742|.627|.111|.774|.553|.492|.583|
| SCSD-HS | 2016 |.754|.592|.194|.693|.591|.466|.611|
| DS | 2016      |.745|.603|.120|.750|.551|.451|.585|
| ELD | 2016     |.715|.611|.092|.750|.528|.540|.561|
| DCL | 2016     |.739|.684|.097|.713|.553|.482|.584|
| DHS | 2016     | -- | -- | -- | -- | -- | -- | -- |
| LEGS | 2015    |.669|.592|.133|.714|.493|.454|.512|
| MCDL | 2015    |.701|.625|.089|.752|.541|.512|.558|
| MDF | 2015     |.694|.644|.092|.721|.490|.475|.526|

### HKU-IS

> pre-computed saliency maps [[BaiduYun]](https://pan.baidu.com/s/1N64zLo7p0Z3f2aK1d9y0Bw)

> pre-computed `.mat` files [[BaiduYun]](dd) (please contact me if you need this)

|Methods | year | max F-measure | mean F-measure | MAE | [S-measure](https://github.com/DengPingFan/S-measure) | IoU(@ max Fm) | mean IoU | max IoU |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| AFNet | 2019    |.923|.888|.036|.905|.814|.809|.835|
| BMPM | 2018    |.921|.871|.039|.907|.818|.801|.838|
| DGRL | 2018    |.910|.890|.036|.895|.802|.811|.820|
| PAGR | 2018    |.918|.886|.048|.887|.791|.753|.814|
| RAS | 2018     |.913|.871|.045|.887|.788|.771|.807|
| PiCANet | 2018 |.921|.870|.042|.906|.809|.786|.833|
| PiCANet-C| 2018|.925|.907|.031|.904|.820|.833|.841|
| R3Net | 2018   |.917|.905|.038|.891|.799|.801|.824|
| Amulet | 2017  |.895|.839|.052|.883|.772|.755|.797|
| UCF | 2017     |.886|.808|.074|.866|.747|.706|.777|
| SRM | 2017     |.906|.874|.046|.887|.772|.754|.803|
| MSRNet | 2017  |.923|.868|.036|.912|.809|.803|.838|
| NLDF | 2017    |.902|.874|.048|.879|.770|.761|.795|
| DSS | 2017     |.910|.895|.041|.879|.779|.788|.805|
| RFCN | 2016    |.892|.835|.079|.858|.746|.643|.772|
| SCSD-HS | 2016 |.871|.740|.177|.760|.716|.544|.744|
| DS | 2016      |.865|.788|.080|.852|.696|.645|.737|
| ELD | 2016     |.839|.769|.074|.820|.652|.668|.689|
| DCL | 2016     |.885|.853|.072|.819|.729|.623|.763|
| DHS | 2016     |.890|.855|.053|.870|.746|.735|.774|
| LEGS | 2015    |.766|.723|.119|.742|.557|.499|.599|
| MCDL | 2015    |.808|.757|.092|.786|.623|.572|.647|
| MDF | 2015     |.861|.784|.129|.810|.688|.541|.718|

### DUTS-test

> pre-computed saliency maps [[BaiduYun]](https://pan.baidu.com/s/19a26OE0wyrelxFned0cI9w)

> pre-computed `.mat` files [[BaiduYun]](dd) (please contact me if you need this)

|Methods | year | max F-measure | mean F-measure | MAE | [S-measure](https://github.com/DengPingFan/S-measure) | IoU(@ max Fm) | mean IoU | max IoU |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| AFNet | 2019    |.862|.797|.046|.866|.721|.719|.748|
| BMPM | 2018    |.851|.751|.049|.861|.706|.698|.736|
| DGRL | 2018    |.829|.798|.050|.841|.692|.703|.713|
| PAGR | 2018    |.855|.788|.056|.837|.685|.642|.713|
| RAS | 2018     |.831|.755|.060|.839|.675|.667|.697|
| PiCANet | 2018 |.851|.755|.054|.861|.700|.685|.735|
| PiCANet-C| 2018|.850|.818|.046|.850|.702|.722|.734|
| R3Net | 2018   |.828|.796|.059|.829|.665|.678|.598|
| Amulet | 2017  |.778|.676|.085|.803|.615|.609|.646|
| UCF | 2017     |.771|.629|.117|.778|.598|.562|.628|
| SRM | 2017     |.827|.757|.059|.834|.657|.638|.690|
| MSRNet | 2017  |.829|.708|.061|.840|.654|.658|.692|
| NLDF | 2017    |.812|.743|.066|.815|.624|.631|.661|
| DSS | 2017     |.825|.791|.057|.822|.652|.670|.684|
| RFCN | 2016    |.784|.712|.091|.792|.608|.540|.633|
| SCSD-HS | 2016 |    |    |    |    |    |    |    |
| DS | 2016      |.777|.633|.090|.793|.577|.532|.617|
| ELD | 2016     |.738|.628|.093|.753|.528|.541|.561|
| DCL | 2016     |.782|.714|.088|.735|.589|.504|.625|
| DHS | 2016     |.807|.724|.067|.817|.621|.621|.660|
| LEGS | 2015    |.655|.585|.138|.694|.454|.423|.485|
| MCDL | 2015    |.672|.594|.106|.712|.469|.442|.493|
| MDF | 2015     |.730|.673|.094|.732|.504|.485|.543|

### SOD

> pre-computed saliency maps [[BaiduYun]](https://pan.baidu.com/s/1jG0vQ_Ppw9xlCUEvae7s5g)

> pre-computed `.mat` files [[BaiduYun]](dd) (please contact me if you need this)

|Methods | year | max F-measure | mean F-measure | MAE | [S-measure](https://github.com/DengPingFan/S-measure) | IoU(@ max Fm) | mean IoU | max IoU |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| AFNet | 2019    |.856|.809|.109|.777|.670|.626|.693|
| BMPM | 2018    |.855|.763|.107|.787|.675|.633|.692|
| DGRL | 2018    |.845|.799|.104|.771|.655|.642|.668|
| PAGR | 2018    |    |    |    |    |    |    |    |
| RAS | 2018     |.850|.799|.124|.764|.644|.611|.661|
| PiCANet | 2018 |.853|.791|.102|.791|.679|.628|.701|
| PiCANet-C| 2018|.836|.800|.087|.772|.669|.638|.680|
| R3Net | 2018   |.836|.789|.136|.732|.600|.573|.600|
| Amulet | 2017  |.806|.755|.141|.758|.619|.596|.642|
| UCF | 2017     |.803|.699|.164|.754|.601|.566|.634|
| SRM | 2017     |.843|.800|.127|.742|.636|.562|.665|
| MSRNet | 2017  |.836|.741|.113|.779|.653|.614|.683|
| NLDF | 2017    |.841|.791|.124|.757|.654|.599|.678|
| DSS | 2017     |.844|.795|.121|.751|.651|.608|.656|
| RFCN | 2016    |.799|.751|.170|.730|.602|.488|.629|
| SCSD-HS | 2016 |.796|.628|.222|.710|.592|.477|.612|
| DS | 2016      |.784|.698|.190|.712|.566|.427|.603|
| ELD | 2016     |.764|.712|.155|.705|.534|.524|.563|
| DCL | 2016     |.823|.741|.141|.735|.624|.506|.653|
| DHS | 2016     |.827|.774|.128|.750|.628|.578|.658|
| LEGS | 2015    |.734|.683|.196|.657|.495|.430|.533|
| MCDL | 2015    |.731|.677|.181|.650|.505|.417|.528|
| MDF | 2015     |.787|.721|.159|.679|.563|.460|.585|

### Related Citations (BibTeX)
#### benchmarks
```
% ECSSD
@inproceedings{yan2013hierarchical,
  title={Hierarchical saliency detection},
  author={Yan, Qiong and Xu, Li and Shi, Jianping and Jia, Jiaya},
  booktitle={Proceedings of the IEEE Conference on Computer Vision and Pattern Recognition},
  pages={1155--1162},
  year={2013}
}
```
```
% PASCAL-S
@inproceedings{li2014secrets,
  title={The secrets of salient object segmentation},
  author={Li, Yin and Hou, Xiaodi and Koch, Christof and Rehg, James M and Yuille, Alan L},
  booktitle={Proceedings of the IEEE Conference on Computer Vision and Pattern Recognition},
  pages={280--287},
  year={2014}
}
```
```
% DUT-OMRON
@inproceedings{yang2013saliency,
  title={Saliency detection via graph-based manifold ranking},
  author={Yang, Chuan and Zhang, Lihe and Lu, Huchuan and Ruan, Xiang and Yang, Ming-Hsuan},
  booktitle={Proceedings of the IEEE conference on computer vision and pattern recognition},
  pages={3166--3173},
  year={2013}
}
```
```
% HKU-IS
@inproceedings{li2015visual,
  title={Visual saliency based on multiscale deep features},
  author={Li, Guanbin and Yu, Yizhou},
  booktitle={Proceedings of the IEEE conference on computer vision and pattern recognition},
  pages={5455--5463},
  year={2015}
}
```
```
% DUTS
@inproceedings{wang2017,
  title={Learning to Detect Salient Objects with Image-level Supervision},
  author={Wang, Lijun and Lu, Huchuan and Wang, Yifan and Feng, Mengyang and Wang, Dong, and Yin, Baocai and Ruan, Xiang}, 
  booktitle={CVPR},
  year={2017}
}
```
```
% SOD
@inproceedings{movahedi2010design,
  title={Design and perceptual validation of performance measures for salient object segmentation},
  author={Movahedi, Vida and Elder, James H},
  booktitle={Computer Vision and Pattern Recognition Workshops (CVPRW), 2010 IEEE Computer Society Conference on},
  pages={49--56},
  year={2010},
  organization={IEEE}
}
```
```
% SOS
@inproceedings{zhang2015salient,
  title={Salient object subitizing},
  author={Zhang, Jianming and Ma, Shugao and Sameki, Mehrnoosh and Sclaroff, Stan and Betke, Margrit and Lin, Zhe and Shen, Xiaohui and Price, Brian and Mech, Radomir},
  booktitle={Proceedings of the IEEE Conference on Computer Vision and Pattern Recognition},
  pages={4045--4054},
  year={2015}
}
```
```
% THUR
@article{cheng2014salientshape,
  title={Salientshape: Group saliency in image collections},
  author={Cheng, Ming-Ming and Mitra, Niloy J and Huang, Xiaolei and Hu, Shi-Min},
  journal={The Visual Computer},
  volume={30},
  number={4},
  pages={443--453},
  year={2014},
  publisher={Springer}
}
```
```
% MSRA10K
@article{ChengPAMI,
  author = {Ming-Ming Cheng and Niloy J. Mitra and Xiaolei Huang and Philip H. S. Torr and Shi-Min Hu},
  title = {Global Contrast based Salient Region Detection},
  year  = {2015},
  journal= {IEEE TPAMI},
  volume={37}, 
  number={3}, 
  pages={569--582}, 
  doi = {10.1109/TPAMI.2014.2345401},
}
```
```
% SED
@inproceedings{alpert2007image,
  title={Image segmentation by probabilistic bottom-up aggregation and cue integration},
  author={Alpert, Sharon and Galun, Meirav and Basri, Ronen and Brandt, Achi},
  booktitle={Proceedings of the IEEE Conference on Computer Vision and Pattern Recognition},
  pages={1--8},
  year={2007},
  organization={IEEE}
}
```
#### algorithms
```
% BMPM
@inproceedings{zhang2018bi,
  title={A Bi-Directional Message Passing Model for Salient Object Detection},
  author={Zhang, Lu and Dai, Ju and Lu, Huchuan and He, You and Wang, Gang},
  booktitle={Proceedings of the IEEE Conference on Computer Vision and Pattern Recognition},
  pages={1741--1750},
  year={2018}
}
```
```
% DGRL
@inproceedings{wang2018detect,
  title={Detect Globally, Refine Locally: A Novel Approach to Saliency Detection},
  author={Wang, Tiantian and Zhang, Lihe and Wang, Shuo and Lu, Huchuan and Yang, Gang and Ruan, Xiang and Borji, Ali},
  booktitle={Proceedings of the IEEE Conference on Computer Vision and Pattern Recognition},
  pages={3127--3135},
  year={2018}
}
```
```
% PAGR
@inproceedings{zhang2018progressive,
  title={Progressive Attention Guided Recurrent Network for Salient Object Detection},
  author={Zhang, Xiaoning and Wang, Tiantian and Qi, Jinqing and Lu, Huchuan and Wang, Gang},
  booktitle={Proceedings of the IEEE Conference on Computer Vision and Pattern Recognition},
  pages={714--722},
  year={2018}
}
```
```
% RAS
@inproceedings{chen2018eccv, 
  author={Chen, Shuhan and Tan, Xiuli and Wang, Ben and Hu, Xuelong}, 
  booktitle={European Conference on Computer Vision}, 
  title={Reverse Attention for Salient Object Detection}, 
  year={2018}
} 
```
```
% PiCANet
@inproceedings{liu2018picanet,
  title={PiCANet: Learning Pixel-wise Contextual Attention for Saliency Detection},
  author={Liu, Nian and Han, Junwei and Yang, Ming-Hsuan},
  booktitle={Proceedings of the IEEE Conference on Computer Vision and Pattern Recognition},
  pages={3089--3098},
  year={2018}
}
```
```
% R3Net
@inproceedings{deng18r,
  author = {Deng, Zijun and Hu, Xiaowei and Zhu, Lei and Xu, Xuemiao and Qin, Jing and Han, Guoqiang and Heng, Pheng-Ann},
  title = {R$^{3}${N}et: Recurrent Residual Refinement Network for Saliency Detection},
  booktitle = {IJCAI},
  year = {2018}
}
```
```
% Amulet
@inproceedings{zhang2017amulet,
  title={Amulet: Aggregating multi-level convolutional features for salient object detection},
  author={Zhang, Pingping and Wang, Dong and Lu, Huchuan and Wang, Hongyu and Ruan, Xiang},
  booktitle={Proceedings of the IEEE International Conference on Computer Vision},
  pages={202--211},
  year={2017}
}
```
```
% UCF
@inproceedings{zhang2017learning,
  title={Learning uncertain convolutional features for accurate saliency detection},
  author={Zhang, Pingping and Wang, Dong and Lu, Huchuan and Wang, Hongyu and Yin, Baocai},
  booktitle={Computer Vision (ICCV), 2017 IEEE International Conference on},
  pages={212--221},
  year={2017},
  organization={IEEE}
}
```
```
% SRM
@inproceedings{wang2017stagewise,
  title={A stagewise refinement model for detecting salient objects in images},
  author={Wang, Tiantian and Borji, Ali and Zhang, Lihe and Zhang, Pingping and Lu, Huchuan},
  booktitle={Proceedings of the IEEE International Conference on Computer Vision},
  pages={4019--4028},
  year={2017}
}
```
```
% MSRNet
@inproceedings{li2017instance,
  title={Instance-level salient object segmentation},
  author={Li, Guanbin and Xie, Yuan and Lin, Liang and Yu, Yizhou},
  booktitle={Computer Vision and Pattern Recognition (CVPR), 2017 IEEE Conference on},
  pages={247--256},
  year={2017},
  organization={IEEE}
}
```
```
% NLDF
@inproceedings{luo2017non,
  title={Non-local Deep Features for Salient Object Detection.},
  author={Luo, Zhiming and Mishra, Akshaya Kumar and Achkar, Andrew and Eichel, Justin A and Li, Shaozi and Jodoin, Pierre-Marc},
  booktitle={CVPR},
  volume={2},
  number={6},
  pages={7},
  year={2017}
}
```
```
% DSS
@inproceedings{hou2017deeply,
  title={Deeply supervised salient object detection with short connections},
  author={Hou, Qibin and Cheng, Ming-Ming and Hu, Xiaowei and Borji, Ali and Tu, Zhuowen and Torr, Philip},
  booktitle={2017 IEEE Conference on Computer Vision and Pattern Recognition (CVPR)},
  pages={5300--5309},
  year={2017},
  organization={IEEE}
}
```
```
% RFCN
@inproceedings{wang2016saliency,
  title={Saliency detection with recurrent fully convolutional networks},
  author={Wang, Linzhao and Wang, Lijun and Lu, Huchuan and Zhang, Pingping and Ruan, Xiang},
  booktitle={European Conference on Computer Vision},
  pages={825--841},
  year={2016},
  organization={Springer}
}
```
```
% SCSD-HS
@inproceedings{kim2016shape,
  title={A shape preserving approach for salient object detection using convolutional neural networks},
  author={Kim, Jongpil and Pavlovic, Vladimir},
  booktitle={Pattern Recognition (ICPR), 2016 23rd International Conference on},
  pages={609--614},
  year={2016},
  organization={IEEE}
}
```
```
% DS
@article{li2016deepsaliency,
  title={Deepsaliency: Multi-task deep neural network model for salient object detection},
  author={Li, Xi and Zhao, Liming and Wei, Lina and Yang, Ming-Hsuan and Wu, Fei and Zhuang, Yueting and Ling, Haibin and Wang, Jingdong},
  journal={IEEE Transactions on Image Processing},
  volume={25},
  number={8},
  pages={3919--3930},
  year={2016},
  publisher={IEEE}
}
```
```
% ELD
@inproceedings{lee2016deep,
  title={Deep saliency with encoded low level distance map and high level features},
  author={Lee, Gayoung and Tai, Yu-Wing and Kim, Junmo},
  booktitle={Proceedings of the IEEE Conference on Computer Vision and Pattern Recognition},
  pages={660--668},
  year={2016}
}
```
```
% DCL
@inproceedings{li2016deep,
  title={Deep contrast learning for salient object detection},
  author={Li, Guanbin and Yu, Yizhou},
  booktitle={Proceedings of the IEEE Conference on Computer Vision and Pattern Recognition},
  pages={478--487},
  year={2016}
}
```
```
% DHSNet
@inproceedings{liu2016dhsnet,
  title={Dhsnet: Deep hierarchical saliency network for salient object detection},
  author={Liu, Nian and Han, Junwei},
  booktitle={2016 IEEE Conference on Computer Vision and Pattern Recognition (CVPR)},
  pages={678--686},
  year={2016},
  organization={IEEE}
}
```
```
% LEGS
@inproceedings{wang2015deep,
  title={Deep networks for saliency detection via local estimation and global search},
  author={Wang, Lijun and Lu, Huchuan and Ruan, Xiang and Yang, Ming-Hsuan},
  booktitle={Proceedings of the IEEE Conference on Computer Vision and Pattern Recognition},
  pages={3183--3192},
  year={2015}
}
```
```
% MCDL
@inproceedings{zhao2015saliency,
  title={Saliency detection by multi-context deep learning},
  author={Zhao, Rui and Ouyang, Wanli and Li, Hongsheng and Wang, Xiaogang},
  booktitle={Proceedings of the IEEE Conference on Computer Vision and Pattern Recognition},
  pages={1265--1274},
  year={2015}
}
```
```
% MDF
@inproceedings{li2015visual,
  title={Visual saliency based on multiscale deep features},
  author={Li, Guanbin and Yu, Yizhou},
  booktitle={Proceedings of the IEEE conference on computer vision and pattern recognition},
  pages={5455--5463},
  year={2015}
}
```

## TODO

- [x] add scores in [Table](#table)
- [x] add pre-computed saliency maps
- [x] add pre-computed `.mat` files
- [x] add evaluation codes

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
