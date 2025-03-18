FROM maven:3.8.3-openjdk-11-slim AS build
WORKDIR /
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:11-jre-slim
COPY --from=build /target/jobportalWithOutLoginSecurity-0.0.1-SNAPSHOT.jar /jobportalWithOutLoginSecurity-0.0.1-SNAPSHOT.jar
EXPOSE 8080
CMD ["java", "-jar", "/jobportalWithOutLoginSecurity-0.0.1-SNAPSHOT.jar"]