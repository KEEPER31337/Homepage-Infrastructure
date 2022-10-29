#!/bin/sh

if [ ! -f "docker/data/init.sql" ]
then
    echo "No init sql"
    echo "Check docker/data/init.sql file"
    exit
fi

docker build --build-arg APP_TAG=layer -t keeper-homepage-app:build -f docker/app.dockerfile .
docker build -t keeper-homepage-db:build -f docker/db.dockerfile .

docker-compose -p keeper up
