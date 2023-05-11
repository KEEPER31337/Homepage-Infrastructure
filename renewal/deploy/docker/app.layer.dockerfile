FROM gradle:7.6-jdk17

WORKDIR /home/keeper

RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

COPY \
    docker/data/server/dependencies \
    docker/data/server/spring-boot-loader \
    docker/data/server/snapshot-dependencies \
    docker/data/server/application \
    ./

ENTRYPOINT [ \
    "java", \
    "-Dspring.profiles.active=deploy", \
    "-Duser.timezone=Asia/Seoul", \
    "org.springframework.boot.loader.JarLauncher" \
]
