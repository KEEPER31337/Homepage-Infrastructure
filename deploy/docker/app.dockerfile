FROM gradle:7.3.2-jdk17

WORKDIR /home/keeper

COPY docker/data/server/homepage-0.0.1-SNAPSHOT.jar /app.jar

RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=deploy", "-Duser.timezone=Asia/Seoul", "/app.jar"]
