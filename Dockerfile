#
# Build stage
#
FROM maven:3.8.3-openjdk-11
COPY src /
COPY pom.xml /
RUN mvn -f /pom.xml clean package


FROM openjdk:11-jdk-slim
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app-0.0.1.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/app-0.0.1.jar"]


