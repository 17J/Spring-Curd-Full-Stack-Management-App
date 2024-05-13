FROM openjdk:11

WORKDIR /fullstackcurd

COPY . .

RUN apt-get update && apt-get install maven -y

RUN mvn clean package

#COPY target/project_tracker-0.0.1-SNAPSHOT.jar project_tracker-0.0.1-SNAPSHOT.jar

EXPOSE 8085

ENTRYPOINT ["java", "-jar", "target/project_tracker-0.0.1-SNAPSHOT.jar"]

