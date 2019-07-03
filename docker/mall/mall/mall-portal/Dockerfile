FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD mall-portal-0.0.1-SNAPSHOT.jar portal.jar
RUN sh -c 'touch portal.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java -jar portal.jar" ]