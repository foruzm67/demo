FROM openjdk:8-jdk-alpine
ADD target/demodocker-0.0.1-SNAPSHOT.jar demodocker.jar
RUN apk update && apk add bash
ENTRYPOINT ["java","-jar","/demodocker.jar"]