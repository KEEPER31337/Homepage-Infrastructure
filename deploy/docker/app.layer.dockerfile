FROM gradle:7.3.2-jdk17

WORKDIR /home/keeper

COPY docker/data/server/dependencies .
COPY docker/data/server/spring-boot-loader .
COPY docker/data/server/snapshot-dependencies .
COPY docker/data/server/application .

RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

ENTRYPOINT ["java", "-Duser.timezone=Asia/Seoul", "org.springframework.boot.loader.JarLauncher"]
