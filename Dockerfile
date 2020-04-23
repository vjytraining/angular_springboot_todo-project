FROM openjdk:11-jdk-slim

RUN apt-get update && apt-get upgrade

ADD target/todo*.jar app.jar

ENTRYPOINT ["java", "-jar", "app.jar" ]
