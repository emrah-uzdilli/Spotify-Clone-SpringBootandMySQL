FROM openjdk:17-alpine
ARG JAR_FILE=target/*.jar
COPY ./target/Spotify-0.0.1-SNAPSHOT.jar app.jar
CMD ["java", "-jar", "/app.jar"]