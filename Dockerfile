FROM openjdk:10

ARG RELEASE_VERSION
ENV RELEASE_VERSION ${RELEASE_VERSION}
LABEL release_version=${RELEASE_VERSION}
COPY ./build/libs/springboot-mongo-test-${RELEASE_VERSION}.jar /usr/src/springboot-mongo-test-${RELEASE_VERSION}.jar
WORKDIR /usr/src
EXPOSE 8080
ENTRYPOINT java -jar springboot-mongo-test-${RELEASE_VERSION}.jar