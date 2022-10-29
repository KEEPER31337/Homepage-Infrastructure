#!/bin/bash

cp /application.properties /home/keeper/src/main/resources/application.properties

cd /home/keeper

git pull

gradle build --daemon --build-cache --parallel
