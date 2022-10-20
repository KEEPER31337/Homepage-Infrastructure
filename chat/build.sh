#!/bin/sh

if [ ! -d "Homepage-ChatServer" ]
then
    git clone https://github.com/KEEPER31337/Homepage-ChatServer.git
fi

docker bulid -t keeper-homepage-chat:prod -f docker/chat.dockerfile .
docker bulid -t keeper-homepage-chat-db:prod -f docker/db.dockerfile .
