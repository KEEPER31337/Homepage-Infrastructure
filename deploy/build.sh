#!/bin/sh

docker build -t keeper-homepage-app:prod -f docker/app.layer.dockerfile .
docker build -t keeper-homepage-db:prod -f docker/db.dockerfile .
docker build -t keeper-homepage-nginx:prod -f docker/nginx.dockerfile .
docker build -t keeper-homepage-wiki:prod -f docker/wiki.dockerfile .
