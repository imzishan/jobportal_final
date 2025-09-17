# Use Maven + Java 17 image
FROM maven:3.9.6-openjdk-17-slim AS build

WORKDIR /app

# Copy pom and src
COPY pom.xml .
COPY src ./src

# Build the project
RUN mvn clean package -DskipTests

# Run stage
FROM openjdk:17-jdk-slim

WORKDIR /app

COPY --from=build /app/target/jobportal-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
