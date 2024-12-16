FROM openjdk:17

WORKDIR /app

COPY mvnw .
COPY .mvn .mvn
COPY pom.xml .
COPY src src

<<<<<<< HEAD
RUN sudo ./mvnw package -DskipTests
=======
RUN chmod +x mvnw
RUN ./mvnw package -DskipTests
>>>>>>> a6c94f9b0345ebf8807fec66f540bf4059855ce2

ARG JAR_FILE=target/*.jar

CMD java -jar target/*.jar
