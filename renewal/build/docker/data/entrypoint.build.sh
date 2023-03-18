#!/bin/sh

cp /application.yml /home/keeper/src/main/resources/application.yml

cd /home/keeper

git pull

gradle build --daemon --build-cache --parallel
