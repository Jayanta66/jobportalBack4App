FROM openjdk:11-jdk-slim
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} jobportal-0.0.1.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/jobportal-0.0.1.jar"]