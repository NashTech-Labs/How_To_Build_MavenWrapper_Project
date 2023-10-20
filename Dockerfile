FROM bellsoft/liberica-openjdk-alpine:17 AS builder
WORKDIR application
COPY .mvn .mvn
COPY mvnw mvnw
COPY pom.xml pom.xml
RUN sed -i 's/\r$//' mvnw # For windows os
RUN ./mvnw -fn clean verify
COPY src src
RUN ./mvnw clean install
COPY /target/my-app-1.0-SNAPSHOT.jar ./demo.jar
RUN java  -jar target/*.jar
ENTRYPOINT ["java", "-jar", "./demo.jar"]

#ENTRYPOINT ["tail", "-f", "/dev/null"]
