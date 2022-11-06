#!/bin/sh

if [ $# -ne 1 ]; then
    echo 'No argument'
    exit -1
fi

BUILD_PATH="docker/data/server"

aws s3 cp s3://keeper-homepage/prod/back/$1.tar.gz $BUILD_PATH/$1.tar.gz

if [ -d $BUILD_PATH/application ]
then
    rm -r \
        $BUILD_PATH/dependencies \
        $BUILD_PATH/snapshot-dependencies \
        $BUILD_PATH/spring-boot-loader \
        $BUILD_PATH/application
fi

tar -zxvf $BUILD_PATH/$1.tar.gz -C $BUILD_PATH
rm $BUILD_PATH/$1.tar.gz

docker build -t keeper-homepage-app:prod -f docker/app.layer.dockerfile .

docker rmi $(docker images -f "dangling=true" -q)

docker-compose -p keeper up -d
