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
|Methods | year | max F-measure | mean F-measure | MAE | S-measure | mIoU |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| Amulet | 2017   |.915|    |.059|.894|    |
| UCF | 2017      |.911|    |.078|.883|    |
| SRM | 2017      |.917|    |.054|.895|    |
| MSRNet | 2017   |    |    |    |    |    |
| NLDF | 2017     |.905|    |.063|.875|    |
| DSS | 2017      |.916|    |.052|.882|    |
| RFCN | 2016     |.890|    |.107|.852|    |
| SCSD-HS | 2016  |    |    |    |    |    |
| DS | 2016       |.882|    |.122|.821|    |
| ELD | 2016      |.867|    |.079|.839|    |
| DCL | 2016      |.890|    |.088|.828|    |
| DHS | 2016      |.907|    |.059|.884|    |
| LEGS | 2015     |.827|    |.118|.787|    |
| MCDL | 2015     |    |    |    |    |    |
| MDF | 2015      |.832|    |.105|.776|    |

### PASCAL-S
|Methods | year | max F-measure | mean F-measure | MAE | S-measure | mIoU |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| Amulet | 2017  |.837|    |.098|.820|    |
| UCF | 2017     |.828|    |.126|.803|    |
| SRM | 2017     |.847|    |.085|.832|    |
| MSRNet | 2017  |    |    |    |    |    |
| NLDF | 2017    |.831|    |.099|.803|    |
| DSS | 2017     |.836|    |.096|.797|    |
| RFCN | 2016    |.837|    |.118|.808|    |
| SCSD-HS | 2016 |    |    |    |    |    |
| DS | 2016      |.765|    |.176|.739|    |
| ELD | 2016     |.773|    |.123|.757|    |
| DCL | 2016     |.805|    |.125|.754|    |
| DHS | 2016     |.829|    |.094|.807|    |
| LEGS | 2015    |.762|    |.155|.725|    |
| MCDL | 2015    |    |    |    |    |    |
| MDF | 2015     |.768|    |.146|.692|    |

### DUT-OMRON
|Methods | year | max F-measure | mean F-measure | MAE | S-measure | mIoU |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| Amulet | 2017  |.742|    |.098|.780|    |
| UCF | 2017     |.734|    |.132|.758|    |
| SRM | 2017     |.769|    |.069|.797|    |
| MSRNet | 2017  |    |    |    |    |    |
| NLDF | 2017    |.753|    |.080|.770|    |
| DSS | 2017     |.771|    |.066|.788|    |
| RFCN | 2016    |.742|    |.111|.774|    |
| SCSD-HS | 2016 |    |    |    |    |    |
| DS | 2016      |.745|    |.120|.750|    |
| ELD | 2016     |.715|    |.092|.750|    |
| DCL | 2016     |.739|    |.097|.713|    |
| DHS | 2016     | -- | -- | -- | -- | -- |
| LEGS | 2015    |.669|    |.133|.714|    |
| MCDL | 2015    |    |    |    |    |    |
| MDF | 2015     |.694|    |.092|.721|    |

### HKU-IS
|Methods | year | max F-measure | mean F-measure | MAE | S-measure | mIoU |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| Amulet | 2017  |.895|    |.052|.883|    |
| UCF | 2017     |.886|    |.074|.866|    |
| SRM | 2017     |.906|    |.046|.887|    |
| MSRNet | 2017  |    |    |    |    |    |
| NLDF | 2017    |.902|    |.048|.879|    |
| DSS | 2017     |.910|    |.041|.879|    |
| RFCN | 2016    |.892|    |.079|.858|    |
| SCSD-HS | 2016 |    |    |    |    |    |
| DS | 2016      |.865|    |.080|.852|    |
| ELD | 2016     |.839|    |.074|.820|    |
| DCL | 2016     |.885|    |.072|.819|    |
| DHS | 2016     |.890|    |.053|.870|    |
| LEGS | 2015    |.766|    |.119|.742|    |
| MCDL | 2015    |    |    |    |    |    |
| MDF | 2015     |.860|    |.129|.810|    |

### DUTS-test
|Methods | year | max F-measure | mean F-measure | MAE | S-measure | mIoU |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| Amulet | 2017  |.778|    |.085|.803|    |
| UCF | 2017     |.771|    |.117|.778|    |
| SRM | 2017     |.827|    |.059|.834|    |
| MSRNet | 2017  |    |    |    |    |    |
| NLDF | 2017    |.812|    |.066|.815|    |
| DSS | 2017     |.825|    |.057|.822|    |
| RFCN | 2016    |.784|    |.091|.792|    |
| SCSD-HS | 2016 |    |    |    |    |    |
| DS | 2016      |.777|    |.090|.793|    |
| ELD | 2016     |.738|    |.093|.753|    |
| DCL | 2016     |.782|    |.088|.735|    |
| DHS | 2016     |.807|    |.067|.817|    |
| LEGS | 2015    |.655|    |.138|.694|    |
| MCDL | 2015    |    |    |    |    |    |
| MDF | 2015     |.730|    |.094|.732|    |

### SOD
|Methods | year | max F-measure | mean F-measure | MAE | S-measure | mIoU |
| :-: | :-: | :-: | :-: | :-: | :-: | :-: |
| Amulet | 2017  |    |    |    |    |    |
| UCF | 2017     |    |    |    |    |    |
| SRM | 2017     |    |    |    |    |    |
| MSRNet | 2017  |    |    |    |    |    |
| NLDF | 2017    |    |    |    |    |    |
| DSS | 2017     |    |    |    |    |    |
| RFCN | 2016    |    |    |    |    |    |
| SCSD-HS | 2016 |    |    |    |    |    |
| DS | 2016      |    |    |    |    |    |
| ELD | 2016     |    |    |    |    |    |
| DCL | 2016     |    |    |    |    |    |
| DHS | 2016     |    |    |    |    |    |
| LEGS | 2015    |    |    |    |    |    |
| MCDL | 2015    |    |    |    |    |    |
| MDF | 2015     |    |    |    |    |    |

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

- [ ] add scores in [Table](#table)
- [ ] add evaluation codes
- [ ] add pre-computed `.mat` files
- [ ] add pre-computed saliency maps (Emm...)
