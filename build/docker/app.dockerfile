FROM gradle:7.3.2-jdk17

ARG APP_TAG

WORKDIR /home/keeper

RUN git clone https://github.com/KEEPER31337/Homepage-Back.git .

RUN apt update && apt install -y locales
RUN localedef -f UTF-8 -i ko_KR ko_KR.UTF-8

ENV LANG=ko_KR.UTF-8 \
    LANGUAGE=ko_KR.UTF-8 \
    LC_ALL=ko_KR.UTF-8


COPY docker/data/entrypoint.${APP_TAG}.sh /entrypoint.sh
COPY docker/data/application.properties /application.properties
