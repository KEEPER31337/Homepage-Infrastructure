#!/bin/sh

if [ ! -d "Homepage-Back" ]
then
    git clone https://github.com/KEEPER31337/Homepage-Back.git
fi

if [ ! -f "config/init.sql" ]
then
    echo "No init sql"
    exit
fi

export $(xargs < .env)

docker build --build-arg APP_TAG=${APP_TAG} -t keeper-homepage-app:${APP_TAG} -f docker/app.dockerfile .
docker build -t keeper-homepage-db:${DB_TAG} -f docker/db.dockerfile .

docker-compose -p keeper up
