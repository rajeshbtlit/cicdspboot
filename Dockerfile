FROM openjdk:8-jdk-alpine
MAINTAINER rajesh
COPY target/cicdspboot-0.0.1-SNAPSHOT.jar cicdspboot-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/cicdspboot-0.0.1-SNAPSHOT.jar"]