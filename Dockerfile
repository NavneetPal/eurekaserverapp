FROM openjdk:17
COPY  target/service-registry.jar service-registry.jar
EXPOSE 8761
ENTRYPOINT ["java", "-jar","/service-registry.jar"]