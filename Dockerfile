FROM openjdk:17
WORKDIR /app
COPY target/*.jar project_tracker-0.0.1-SNAPSHOT.jar 
EXPOSE 8085
ENTRYPOINT ["java", "-jar", "project_tracker-0.0.1-SNAPSHOT.jar"]
