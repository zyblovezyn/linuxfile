FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD mall-search-0.0.1-SNAPSHOT.jar search.jar
RUN sh -c 'touch search.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java -jar search.jar" ]