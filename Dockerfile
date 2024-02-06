FROM adoptopenjdk/openjdk17:latest
VOLUME /tmp
COPY target/usuario-*.jar app.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]