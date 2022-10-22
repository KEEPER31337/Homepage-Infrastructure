#!/bin/sh

if [ $# -ne 1 ]; then
    echo 'No argument'
    exit -1
fi

BUILD_PATH="docker/data"

aws s3 cp s3://keeper-homepage/prod/front/$1.tar.gz $BUILD_PATH

if [ -d $BUILD_PATH/client ]
then
    rm -rf $BUILD_PATH/client/*
fi

tar -zxvf $BUILD_PATH/$1.tar.gz -C $BUILD_PATH/client --strip 1
rm $BUILD_PATH/$1.tar.gz
