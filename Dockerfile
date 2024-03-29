#DOCKER FILE CONFIGS


FROM openjdk:17
EXPOSE 8080
ADD target/springboot-images-demo.jar springboot-images-demo.jar
ENTRYPOINT ["java","-jar","/springboot-images-demo.jar"]