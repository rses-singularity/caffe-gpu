#!/bin/bash
IMG_NAME="caffegpu.img"
sudo rm -fv $IMG_NAME
sudo sudo singularity create -s 4500 $IMG_NAME
sudo singularity bootstrap $IMG_NAME caffe_gpu.def
