FROM gradle:7.6-jdk17

ARG APP_TAG

WORKDIR /home/keeper

RUN git clone https://github.com/KEEPER31337/Homepage-Back-R2.git .

COPY docker/data/entrypoint.${APP_TAG}.sh /entrypoint.sh
COPY docker/data/application.yml /application.yml
