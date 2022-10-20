FROM node:16.14-alpine

WORKDIR /home/keeper

RUN apk --no-cache add tzdata

COPY data/entrypoint.sh /entrypoint.sh
