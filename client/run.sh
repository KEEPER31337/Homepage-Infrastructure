#!/bin/sh

readonly BUILD=1
readonly RUN=2
readonly SCP=3

read -p $'1. Build\n2. Run\n3. Scp\n\nSelect: ' number
SCRIPT='ls'

if [ $number -eq $BUILD ]
then
    :
elif [ $number -eq $RUN ]
then
    SCRIPT='npm run dev'
elif [ $number -eq $SCP ]
then
    read -p 'SSH server server name: ' server
    SCRIPT+="&& scp -r build $server:/home/ubuntu/keeper/front"
else
    exit
fi

if [ ! -d "Homepage-Front" ]
then
    git clone https://github.com/KEEPER31337/Homepage-Front.git
fi

cp config/env.example Homepage-Front/.env

cd Homepage-Front
rm -r build 2> /dev/null

if [ ! -d "node_modules" ]
then
    npm i
fi

eval echo "$SCRIPT"
