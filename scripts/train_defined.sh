#!/bin/bash

#dataset_path=$1
#dataset_path="data"
#num_classes=85164
#num_classes=25
#GPU=0,1,2,3
#GPU=0


CUDA_VISIBLE_DEVICES=0 python train.py \
    -a 'hynet' \
    -b 1024 \
    --lr 0.5 \
    --num-classes 25 \
    --train-filelist data/train_val/train.txt \
    --train-prefix data/mlsp_dataset_int/faces112x112/ \
    --val-filelist data/train_val/val.txt \
    --val-prefix data/mlsp_dataset_int/faces112x112/
