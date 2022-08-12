# Point-MAE Pre-training on ShapeNet training set; If you want to try different models or masking ratios etc., first create a new config file, and pass its path to --config.
CUDA_VISIBLE_DEVICES=0 python main.py \
--config cfgs/pretrain.yaml \
--exp_name ModelNet40-pretrain


# Fine-tuning on ModelNet40, run:
# CUDA_VISIBLE_DEVICES=0,1,2,3 python main.py \
# --config cfgs/finetune_modelnet.yaml \
# --finetune_model \ 
# --exp_name modelnet40-finetune \
# --ckpts <path/to/pre-trained/model>