FROM node:16.14-alpine

WORKDIR /home/keeper

COPY config/entrypoint.sh /entrypoint.sh

RUN apk --no-cache add tzdata
