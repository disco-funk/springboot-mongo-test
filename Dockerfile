FROM openjdk:10

COPY ./build/libs/gs-accessing-mongodb-data-rest-0.1.0.jar /usr/src/app.jar
WORKDIR /usr/src
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]