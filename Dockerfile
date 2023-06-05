# We need Java 8. Choosing openjdk:8 from Docker Hub
FROM openjdk:8

WORKDIR /usr/src/app

EXPOSE 8080

# Copy all of the source code
COPY . .

# build with maven wrapper
RUN ./mvnw package

ENTRYPOINT ["java", "-jar", "./target/docker-example-1.1.3.jar"]
