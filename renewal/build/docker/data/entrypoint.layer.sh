#!/bin/sh

cp /application.yml /home/keeper/src/main/resources/application.yml

cd /home/keeper

git pull

gradle build --daemon --build-cache --parallel

java -Djarmode=layertools -jar /home/keeper/build/libs/homepage-0.0.1-SNAPSHOT.jar extract
