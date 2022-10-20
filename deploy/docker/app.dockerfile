FROM gradle:7.3.2-jdk17

WORKDIR /home/keeper

COPY data/server/homepage-0.0.1-SNAPSHOT.jar /app.jar

RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

ENTRYPOINT ["java", "-jar", "-Duser.timezone=Asia/Seoul", "/app.jar"]
