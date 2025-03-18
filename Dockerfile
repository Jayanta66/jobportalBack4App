FROM openjdk:11-jdk-slim
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} jobportalWithOutLoginSecurity-0.0.1-SNAPSHOT.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/jobportalWithOutLoginSecurity-0.0.1-SNAPSHOT.jar"]