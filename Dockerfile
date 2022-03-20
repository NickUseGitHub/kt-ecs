### Cannot use docker build multi stage
# FROM gradle:7.4.1-jdk11 as builder
# WORKDIR /workspace/app

# COPY build.gradle.kts .
# COPY settings.gradle.kts .
# COPY gradle/wrapper ./gradle/wrapper
# COPY gradlew .
# COPY gradlew.bat .
# COPY src src

# RUN ./gradlew build --stacktrace

#########
FROM openjdk:11.0.14-jre-slim
ARG DEPENDENCY=/workspace/app
WORKDIR /app
EXPOSE 8080
COPY ./build/libs/kt-ecs-0.0.1.jar ./server.jar
CMD ["java", "-jar", "server.jar"]