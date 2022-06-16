FROM openjdk:8-jdk-alpine
ADD target/demodocker-0.0.1-SNAPSHOT.jar app.jar
RUN apk update && apk add bash
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
