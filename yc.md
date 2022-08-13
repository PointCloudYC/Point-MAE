## TODOs

- [x] run the code on modelnet40
  - pretrain, 5.5h for training on server-HP (4 t4 GPUs)
  - fine tune, very slow for fine-tuning, cost ~ 15h (all gpus are not used)
- master the Point-MAE paper
- [ ] run the code on Pipework


## play w. the code

- set up the env;
  - create a conda env named mae
  - ~~use the Server-HP's `pytorch-yc` env~~; if used , encouter the CosineLRScheduler params error which is not compatible with the pytorch 1.10; so need install pytorch between 1.7~1.9
  - install the dependent packages by `bash install.sh`
  - install additional ones, e.g., `pip install timm==0.4.5`(**if install latest version ,repot the CosineLRScheduler funciton parameter error, due to inconsistent function definement**) and `Ninja` (see `install-ninja.sh`) and `opencv-python==4.6`

- download and set up the datasets (ModelNet40, Shapenet55-34 and shapenetcore_partanno_segmentation_benchmark_v0_normal); Note: **Shape55-34 lack train.txt and test.txt, need download from https://raw.githubusercontent.com/lulutang0608/Point-BERT/master/data/ShapeNet55-34/ShapeNet-55/{test.txt, train.txt}**, download the raw txt version rather the html one.

