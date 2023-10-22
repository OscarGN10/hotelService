#inicia con la imagen base que contiene Java runtime
# la imagen con el tag '17-jdk-slim' SI existe en docker hub
FROM openjdk:17-jdk-slim as build

# se agrega el jar del microservicio al contenedor
COPY target/hotels-0.0.1-SNAPSHOT.jar hotels-0.0.1-SNAPSHOT.jar

#se ejecuta el microservicio
ENTRYPOINT ["java","-jar","/hotels-0.0.1-SNAPSHOT.jar"]

# con este dockerFile se creara la imagen del microservicio
