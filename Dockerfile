# Build stage: Maven + JDK 17
FROM maven:3.9.5-eclipse-temurin-17 AS build

WORKDIR /app

# Copy pom.xml and source
COPY pom.xml .
COPY src ./src

# Build the project
RUN mvn clean package -DskipTests

# Run stage: OpenJDK 17
FROM eclipse-temurin:17-jdk

WORKDIR /app

# Copy built JAR
COPY --from=build /app/target/*.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
