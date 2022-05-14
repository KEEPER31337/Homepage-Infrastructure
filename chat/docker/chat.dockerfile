FROM node:16.14-alpine

WORKDIR /home/keeper

COPY config/entrypoint.sh /home/keeper/entrypoint.sh

RUN apk --no-cache add tzdata
