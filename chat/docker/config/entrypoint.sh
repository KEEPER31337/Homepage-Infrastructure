#!/bin/sh

cd /home/keeper

yarn && yarn global add pm2

yarn db:migrate

pm2-runtime start "npx babel-node src/index.js"
