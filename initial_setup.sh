#!/bin/bash

mkdir data
cd data
wget http://s3.amazonaws.com/johndun.aws.bucket/kaggle-retinopathy/trainLabels.csv.zip
unzip -q trainLabels.csv.zip
rm trainLabels.csv.zip
cd ../
