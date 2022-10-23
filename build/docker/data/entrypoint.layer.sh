#!/bin/bash

cp /application.properties /home/keeper/src/main/resources/application.properties

cd /home/keeper

git pull

gradle build --daemon --build-cache --parallel

java -Djarmode=layertools -jar /home/keeper/build/libs/homepage-0.0.1-SNAPSHOT.jar extract
