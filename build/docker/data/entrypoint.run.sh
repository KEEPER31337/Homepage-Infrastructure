#!/bin/bash

cp application.properties /home/keeper/src/main/resources/application.properties

cd /home/keeper

java -jar -Duser.timezone=Asia/Seoul /home/keeper/build/libs/homepage-0.0.1-SNAPSHOT.jar
