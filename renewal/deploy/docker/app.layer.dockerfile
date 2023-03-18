FROM gradle:7.6-jdk17

WORKDIR /home/keeper

COPY [
    "docker/data/server/dependencies",
    "docker/data/server/spring-boot-loader",
    "docker/data/server/snapshot-dependencies",
    "docker/data/server/application",
    "."
]

RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

ENTRYPOINT [
    "java",
    "-Dspring.profiles.active=deploy",
    "-Duser.timezone=Asia/Seoul",
    "org.springframework.boot.loader.JarLauncher"
]
