#!/bin/sh

BUILD_PATH="docker/data/client"

aws s3 cp s3://keeper-homepage/prod/front/$(date +%Y%m%d).tar.gz $BUILD_PATH

if [ -d $BUILD_PATH/build ]
then
    rm -rf $BUILD_PATH/build/*
fi

tar -zxvf $BUILD_PATH/$(date +%Y%m%d).tar.gz -C $BUILD_PATH/build
rm $BUILD_PATH/$(date +%Y%m%d).tar.gz
