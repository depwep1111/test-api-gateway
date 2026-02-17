FROM openjdk:25-ea-21-jdk-slim
WORKDIR /app
COPY target/test-api-gateway-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8081
ENTRYPOINT ["java", "-jar", "app.jar"]
