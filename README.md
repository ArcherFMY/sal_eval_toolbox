# Evaluation Toolbox for Salient Object Detection 
Under construction ......

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
Only Deep Learning based methods for now.

NOTE: papers please see my another [repo](https://github.com/ArcherFMY/Paper_Reading_List/blob/master/Image-01-Salient-Object-Detection.md)

- 2018

|Methods |   |   |   |   |   |
| :-: | :-: | :-: | :-: | :-: | :-: |
| BMPM | DGRL| PAGR | RAS | PiCANet | R3Net |

- 2017

|Methods |   |   |   |   |   |
| :-: | :-: | :-: | :-: | :-: | :-: |
| Amulet | UCF| SRM | MSRNet | NLDF | DSS |

- 2016

|Methods |   |   |   |   |   |
| :-: | :-: | :-: | :-: | :-: | :-: |
| RFCN | SCSD-HS| DS | ELD | DCL | DHS |

- 2015

|Methods |   |   |
| :-: | :-: | :-: |
| LEGS | MCDL| MDF |

## Table
All saliency maps are provided by the authors or calculated using their released codes.

### ECSSD
|Methods | year | max F-measure | mean F-measure | MAE | [S-measure](https://github.com/DengPingFan/S-measure) | mIoU |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| BMPM | 2018     |.929|.869|.045|.911|.838|
| DGRL | 2018     |.922|.906|.041|.903|.830|
| PAGR | 2018     |.927|.894|.061|.889|.806|
| RAS | 2018      |.921|.889|.056|.893|.808|
| PiCANet | 2018  |.931|.884|.047|.914|.827|
| PiCANet-C| 2018 |.932|.913|.036|.910|.844|
| R3Net | 2018    |.931|.917|.046|.900|.831|
| Amulet | 2017   |.915|.870|.059|.894|.800|
| UCF | 2017      |.911|.840|.078|.883|.785|
| SRM | 2017      |.917|.892|.054|.895|.796|
| MSRNet | 2017   |.911|.839|.054|.896|.790|
| NLDF | 2017     |.905|.878|.063|.875|.773|
| DSS | 2017      |.916|.901|.052|.882|.796|
| RFCN | 2016     |.890|.834|.107|.852|.740|
| SCSD-HS | 2016  |.865|.719|.192|.773|.707|
| DS | 2016       |.882|.826|.122|.821|.726|
| ELD | 2016      |.867|.810|.079|.839|.699|
| DCL | 2016      |.890|.829|.088|.828|.748|
| DHS | 2016      |.907|.872|.059|.884|.779|
| LEGS | 2015     |.827|.785|.118|.787|.656|
| MCDL | 2015     |.837|.796|.101|.803|.656|
| MDF | 2015      |.832|.807|.105|.776|.641|

### PASCAL-S
|Methods | year | max F-measure | mean F-measure | MAE | [S-measure](https://github.com/DengPingFan/S-measure) | mIoU |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| BMPM | 2018    |.862|.769|.074|.845|.732|
| DGRL | 2018    |.854|.825|.072|.836|.736|
| PAGR | 2018    |.856|.807|.093|.818|.690|
| RAS | 2018     |.837|.785|.104|.795|.658|
| PiCANet | 2018 |.868|.801|.077|.850|.732|
| PiCANet-C| 2018|.867|.833|.067|.843|.736|
| R3Net | 2018   |.845|.807|.097|.800|.675|
| Amulet | 2017  |.837|.768|.098|.820|.690|
| UCF | 2017     |.828|.706|.126|.803|.664|
| SRM | 2017     |.847|.801|.085|.832|.695|
| MSRNet | 2017  |.855|.744|.081|.840|.699|
| NLDF | 2017    |.831|.779|.099|.803|.653|
| DSS | 2017     |.836|.804|.096|.797|.666|
| RFCN | 2016    |.837|.751|.118|.808|.649|
| SCSD-HS | 2016 |.779|.589|.220|.715|.584|
| DS | 2016      |.765|.659|.176|.739|.564|
| ELD | 2016     |.773|.718|.123|.757|.558|
| DCL | 2016     |.805|.714|.125|.754|.626|
| DHS | 2016     |.829|.779|.094|.807|.659|
| LEGS | 2015    |.762|.704|.155|.725|.544|
| MCDL | 2015    |.743|.691|.145|.719|.533|
| MDF | 2015     |.768|.709|.146|.692|.541|

### DUT-OMRON
|Methods | year | max F-measure | mean F-measure | MAE | [S-measure](https://github.com/DengPingFan/S-measure) | mIoU |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| BMPM | 2018    |.774|.692|.064|.809|.632|
| DGRL | 2018    |.774|.733|.062|.806|.640|
| PAGR | 2018    |.771|.711|.071|.775|.586|
| RAS | 2018     |.786|.713|.062|.814|.638|
| PiCANet | 2018 |.794|.710|.068|.826|.657|
| PiCANet-C| 2018|.784|.751|.057|.815|.647|
| R3Net | 2018   |.792|.756|.061|.815|.642|
| Amulet | 2017  |.742|.647|.098|.780|.594|
| UCF | 2017     |.734|.613|.132|.758|.580|
| SRM | 2017     |.769|.707|.069|.797|.605|
| MSRNet | 2017  |.782|.676|.073|.808|.616|
| NLDF | 2017    |.753|.684|.080|.770|.562|
| DSS | 2017     |.771|.729|.066|.788|.605|
| RFCN | 2016    |.742|.627|.111|.774|.553|
| SCSD-HS | 2016 |.754|.592|.194|.693|.591|
| DS | 2016      |.745|.603|.120|.750|.551|
| ELD | 2016     |.715|.611|.092|.750|.528|
| DCL | 2016     |.739|.684|.097|.713|.553|
| DHS | 2016     | -- | -- | -- | -- | -- |
| LEGS | 2015    |.669|.592|.133|.714|.493|
| MCDL | 2015    |.701|.625|.089|.752|.541|
| MDF | 2015     |.694|.644|.092|.721|.490|

### HKU-IS
|Methods | year | max F-measure | mean F-measure | MAE | [S-measure](https://github.com/DengPingFan/S-measure) | mIoU |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| BMPM | 2018    |.921|.871|.039|.907|.818|
| DGRL | 2018    |.910|.890|.036|.895|.802|
| PAGR | 2018    |.918|.886|.048|.887|.791|
| RAS | 2018     |.913|.871|.045|.887|.788|
| PiCANet | 2018 |.921|.870|.042|.906|.809|
| PiCANet-C| 2018|.925|.907|.031|.904|.820|
| R3Net | 2018   |.917|.905|.038|.891|.799|
| Amulet | 2017  |.895|.839|.052|.883|.772|
| UCF | 2017     |.886|.808|.074|.866|.747|
| SRM | 2017     |.906|.874|.046|.887|.772|
| MSRNet | 2017  |.923|.868|.036|.912|.809|
| NLDF | 2017    |.902|.874|.048|.879|.770|
| DSS | 2017     |.910|.895|.041|.879|.779|
| RFCN | 2016    |.892|.835|.079|.858|.746|
| SCSD-HS | 2016 |.871|.740|.177|.760|.716|
| DS | 2016      |.865|.788|.080|.852|.696|
| ELD | 2016     |.839|.769|.074|.820|.652|
| DCL | 2016     |.885|.853|.072|.819|.729|
| DHS | 2016     |.890|.855|.053|.870|.746|
| LEGS | 2015    |.766|.723|.119|.742|.557|
| MCDL | 2015    |.808|.757|.092|.786|.623|
| MDF | 2015     |.861|.784|.129|.810|.688|

### DUTS-test
|Methods | year | max F-measure | mean F-measure | MAE | [S-measure](https://github.com/DengPingFan/S-measure) | mIoU |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| BMPM | 2018    |.851|.751|.049|.861|.706|
| DGRL | 2018    |.829|.798|.050|.841|.692|
| PAGR | 2018    |.855|.788|.056|.837|.685|
| RAS | 2018     |.831|.755|.060|.839|.675|
| PiCANet | 2018 |.851|.755|.054|.861|.700|
| PiCANet-C| 2018|.850|.818|.046|.850|.702|
| R3Net | 2018   |.828|.796|.059|.829|.665|
| Amulet | 2017  |.778|.676|.085|.803|.615|
| UCF | 2017     |.771|.629|.117|.778|.598|
| SRM | 2017     |.827|.757|.059|.834|.657|
| MSRNet | 2017  |.829|.708|.061|.840|.654|
| NLDF | 2017    |.812|.743|.066|.815|.624|
| DSS | 2017     |.825|.791|.057|.822|.652|
| RFCN | 2016    |.784|.712|.091|.792|.608|
| SCSD-HS | 2016 |    |    |    |    |    |
| DS | 2016      |.777|.633|.090|.793|.577|
| ELD | 2016     |.738|.628|.093|.753|.528|
| DCL | 2016     |.782|.714|.088|.735|.589|
| DHS | 2016     |.807|.724|.067|.817|.621|
| LEGS | 2015    |.655|.585|.138|.694|.454|
| MCDL | 2015    |.672|.594|.106|.712|.469|
| MDF | 2015     |.730|.673|.094|.732|.504|

### SOD
|Methods | year | max F-measure | mean F-measure | MAE | [S-measure](https://github.com/DengPingFan/S-measure) | mIoU |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| BMPM | 2018    |.855|.763|.107|.787|.675|
| DGRL | 2018    |.845|.799|.104|.771|.655|
| PAGR | 2018    |    |    |    |    |    |
| RAS | 2018     |.850|.799|.124|.764|.644|
| PiCANet | 2018 |.853|.791|.102|.791|.679|
| PiCANet-C| 2018|.836|.800|.087|.772|.669|
| R3Net | 2018   |.836|.789|.136|.732|.600|
| Amulet | 2017  |.806|.755|.141|.758|.619|
| UCF | 2017     |.803|.699|.164|.754|.601|
| SRM | 2017     |.843|.800|.127|.742|.636|
| MSRNet | 2017  |.836|.741|.113|.779|.653|
| NLDF | 2017    |.841|.791|.124|.757|.654|
| DSS | 2017     |.844|.795|.121|.751|.651|
| RFCN | 2016    |.799|.751|.170|.730|.602|
| SCSD-HS | 2016 |.796|.628|.222|.710|.592|
| DS | 2016      |.784|.698|.190|.712|.566|
| ELD | 2016     |.764|.712|.155|.705|.534|
| DCL | 2016     |.823|.741|.141|.735|.624|
| DHS | 2016     |.827|.774|.128|.750|.628|
| LEGS | 2015    |.734|.683|.196|.657|.495|
| MCDL | 2015    |.731|.677|.181|.650|.505|
| MDF | 2015     |.787|.721|.159|.679|.563|

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
- [ ] add evaluation codes
- [ ] add pre-computed `.mat` files
- [ ] add pre-computed saliency maps (Emm...)
