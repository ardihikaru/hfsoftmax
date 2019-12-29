#!/bin/bash

dataset_path=$1
#num_classes=85164
num_classes=25
#GPU=0,1,2,3
GPU=0


CUDA_VISIBLE_DEVICES=$GPU python train.py \
    -a 'hynet' \
    -b 1024 \
    --lr 0.5 \
    --num-classes $num_classes \
    --train-filelist $dataset_path/train_val/train.txt \
    --train-prefix $dataset_path/mlsp_dataset_int/faces112x112/ \
    --val-filelist $dataset_path/train_val/val.txt \
    --val-prefix $dataset_path/mlsp_dataset_int/faces112x112/
