FROM openjdk:11
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENV SCOPE="test" PORT=8080
ENTRYPOINT ["java", "-jar", "/app.jar"]
