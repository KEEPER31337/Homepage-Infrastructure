FROM gradle:7.3.2-jdk17

WORKDIR /home/keeper

COPY data/server/dependencies .
COPY data/server/spring-boot-loader .
COPY data/server/snapshot-dependencies .
COPY data/server/application .

RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

ENTRYPOINT ["java", "-Duser.timezone=Asia/Seoul", "org.springframework.boot.loader.JarLauncher"]
