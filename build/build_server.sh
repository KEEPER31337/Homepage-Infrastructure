#!/bin/sh

if [ ! -d "Homepage-Back" ]
then
    git clone https://github.com/KEEPER31337/Homepage-Back.git
fi

if [ ! -f "docker/config/init.sql" ]
then
    echo "No init sql"
    exit
fi

docker build --build-arg APP_TAG=build -t keeper-homepage-app:build -f docker/app.dockerfile .
docker build -t keeper-homepage-db:build -f docker/db.dockerfile .

docker-compose -p keeper up
