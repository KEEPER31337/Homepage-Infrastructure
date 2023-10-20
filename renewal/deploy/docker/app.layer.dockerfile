FROM gradle:7.6-jdk17

WORKDIR /home/keeper

RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

COPY docker/data/server/dependencies .
COPY docker/data/server/spring-boot-loader .
COPY docker/data/server/snapshot-dependencies .
COPY docker/data/server/application .
COPY docker/data/server/opentelemetry-javaagent.jar opentelemetry-javaagent.jar

ENTRYPOINT [ \
    "java", \
    "-javaagent:opentelemetry-javaagent.jar", \
    "-Dotel.logs.exporter=otlp", \
    "-Dotel.exporter.otlp.endpoint=http://host.internal.docker:4317", \
    "-Dotel.resource.attributes=service.name=keeper-app", \
    "-Dspring.profiles.active=deploy", \
    "-Duser.timezone=Asia/Seoul", \
    "org.springframework.boot.loader.JarLauncher" \
]
