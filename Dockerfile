FROM openjdk:11-jre-slim
WORKDIR /app
EXPOSE 8080
ADD ./build/libs/kt-ecs-0.0.1-SNAPSHOT.jar ./server.jar
CMD ["java", "-jar", "server.jar"]