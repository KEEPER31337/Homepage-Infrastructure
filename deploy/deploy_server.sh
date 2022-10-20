#!/bin/sh

BUILD_PATH="docker/data/server"

aws s3 cp s3://keeper-homepage/prod/back/$(date +%Y%m%d).tar.gz BUILD_PATH$



if [ -d $BUILD_PATH/application ]
then
    rm -r $BUILD_PATH/dependencies $BUILD_PATH/snapshot-dependencies $BUILD_PATH/spring-boot-loader $BUILD_PATH/application
fi

tar -zxvf $BUILD_PATH/$(date +%Y%m%d).tar.gz -C server
rm $BUILD_PATH/$(date +%Y%m%d).tar.gz

docker build -t keeper-homepage-app:prod -f app.layer.dockerfile .

docker-compose -f docker/docker-compose.yml up -d
