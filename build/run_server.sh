#!/bin/sh

docker build --build-arg APP_TAG=run -t keeper-homepage-app:run -f docker/app.dockerfile .
docker build -t keeper-homepage-db:build -f docker/db.dockerfile .

docker-compose -p keeper up
