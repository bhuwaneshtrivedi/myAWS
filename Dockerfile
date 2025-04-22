#pull base image
FROM openjdk:8-jdk-alpine

#maintainer
MAINTAINER om1812mm@gmail.com

ARG PACKAGED_JAR=target/demo-0.0.1-SNAPSHOT.jar

ADD ${PACKAGED_JAR} app.jar

ENTRYPOINT ["java","-jar","-Xdebug","-Xrunjdwp:server=y,transport=dt_socket,address=8001,suspend=n","/app.jar"]

EXPOSE 8000:8080
EXPOSE 8001:8001


