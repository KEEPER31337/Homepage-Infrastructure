#!/bin/sh

if [ $# -ne 1 ]; then
    echo 'No argument'
    exit -1
fi

BUILD_PATH="docker/data"

aws s3 cp s3://keeper-homepage/prod/back/$1.tar.gz $BUILD_PATH

if [ -d $BUILD_PATH/server/application ]
then
    rm -r \
        $BUILD_PATH/dependencies \
        $BUILD_PATH/snapshot-dependencies \
        $BUILD_PATH/spring-boot-loader \
        $BUILD_PATH/application
fi

tar -zxvf $BUILD_PATH/$1.tar.gz -C $BUILD_PATH/server --strip 1
rm $BUILD_PATH/$1.tar.gz

docker build -t keeper-homepage-app:prod -f docker/app.layer.dockerfile .

docker-compose -f docker/docker-compose.yml up -d
