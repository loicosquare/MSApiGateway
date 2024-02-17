# Utiliser une image JDK 17
FROM amazoncorretto:17-alpine-jdk

ARG JAR_FILE=target/*.jar

# Copier le JAR de l'application dans le conteneur
COPY ${JAR_FILE} svc-apigateway.jar

# Commande pour exécuter l'application Spring Boot
ENTRYPOINT ["java", "-jar", "/svc-apigateway.jar"]

# Exposer le port 8084
EXPOSE 8084

#Build the image
# docker build -t loicsanou/svc-apigateway:0.0.1 .

#Run the container using imageId
# docker run -d -p8084:8084 -e EUREKA_SERVER_ADDRESS=http://host.docker.internal:8761/eureka --name svc-apigateway <imageId>