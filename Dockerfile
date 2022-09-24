FROM openjdk:11-jre-slim
COPY target/webapp*.jar webapp.jar
ENTRYPOINT ["java","-jar","webapp.jar"]