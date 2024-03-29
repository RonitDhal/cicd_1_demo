#FROM openjdk:17
#EXPOSE 8080
#ADD target/springboot-images-demo.jar springboot-images-demo.jar
#ENTRYPOINT:["java","-jar","/springboot-images-demo.jar"]


# Use AdoptOpenJDK 17 as base image
FROM adoptopenjdk/openjdk17:alpine

# Set the working directory in the container
WORKDIR /app

# Copy the packaged Spring Boot application JAR file into the container
COPY target/springboot-images-demo.jar /app

# Specify the command to run on container start
ENTRYPOINT ["java", "-jar", "springboot-images-demo.jar"]
