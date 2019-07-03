FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD mall-admin-0.0.1-SNAPSHOT.jar admin.jar
RUN sh -c 'touch admin.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java -jar admin.jar" ]