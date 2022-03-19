FROM openjdk:11-jre as builder
WORKDIR /workspace/app

COPY build.gradle.kts .
COPY settings.gradle.kts .
COPY gradle/wrapper ./gradle/wrapper
COPY gradlew .
COPY gradlew.bat .
COPY src src

RUN ./gradlew build

#########
FROM openjdk:11-jre-slim
ARG DEPENDENCY=/workspace/app
WORKDIR /app
EXPOSE 8080
COPY --from=builder ${DEPENDENCY}/build/libs/kt-ecs-0.0.1-SNAPSHOT.jar ./server.jar
CMD ["java", "-jar", "server.jar"]