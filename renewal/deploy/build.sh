#!/bin/sh

docker build -t keeper-homepage-app:r2 -f docker/app.layer.dockerfile .
docker build -t keeper-homepage-db:r2 -f docker/db.dockerfile .
docker build -t keeper-homepage-nginx:prod -f docker/nginx.dockerfile .
