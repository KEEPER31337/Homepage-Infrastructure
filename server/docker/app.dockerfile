FROM gradle:7.3.2-jdk17

ARG APP_TAG

WORKDIR /home/keeper

COPY ../config/application.properties /application.properties
COPY ../config/entrypoint.${APP_TAG}.sh /entrypoint.sh

RUN apt update && apt install -y locales
RUN localedef -f UTF-8 -i ko_KR ko_KR.UTF-8

ENV LANG=ko_KR.UTF-8 \
    LANGUAGE=ko_KR.UTF-8 \
    LC_ALL=ko_KR.UTF-8
