# Build stage
FROM maven:3.9-eclipse-temurin-8 AS builder

WORKDIR /app

COPY . .

RUN mvn clean package -DskipTests

# Runtime stage
FROM eclipse-temurin:8-jre

WORKDIR /usr/src/app

COPY --from=builder /app/target/*.jar app.jar

EXPOSE 8070

ENTRYPOINT ["java","-jar","app.jar"]