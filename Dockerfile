#
# Build stage
#
#FROM maven:3.9.9-jdk-17-alpine AS build
FROM openjdk:17-jdk-alpine
COPY src /
COPY pom.xml /
RUN mvn -f /pom.xml clean package



FROM openjdk:17-jdk-alpine
ARG JAR_FILE=/target/*.jar
COPY ${JAR_FILE} jobportal-0.0.1.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/jobportal-0.0.1.jar"]


