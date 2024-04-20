FROM eclipse-temurin:17.0.7_7-jre-alpine

RUN addgroup -S demo && adduser -S demo -G demo
USER demo

VOLUME [ "/tmp11" ]
COPY build/libs/*.jar app.jar
ENTRYPOINT [ "java", "-jar", "/app.jar" ]