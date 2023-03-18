#!/bin/sh

### Check Arguments / $1: Commit ID, $2: prod or dev
if [ $# -ne 2 ]; then
    echo 'Check Arguments'
    exit -1
fi

### Download Build From S3
BUILD_PATH="docker/data/client"

aws s3 cp s3://keeper-homepage/$2/front/$1.tar.gz $BUILD_PATH/$1.tar.gz

if [ -d $BUILD_PATH ]
then
    rm -rf $BUILD_PATH/build/*
fi

tar -zxvf $BUILD_PATH/$1.tar.gz -C $BUILD_PATH/build --strip 1

### Cleanup
rm $BUILD_PATH/$1.tar.gz
