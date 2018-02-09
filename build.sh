#!/bin/bash

IMG_NAME="caffe-gpu"

rm -f $IMG_NAME.img
sudo singularity build $IMG_NAME.simg Singularity
