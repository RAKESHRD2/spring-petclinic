# Use a compatible OpenJDK image as a parent image
FROM eclipse-temurin:17-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the project’s jar file to the container
COPY target/spring-petclinic-*.jar /app/spring-petclinic.jar

# Expose the port the app will run on
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java", "-jar", "/app/spring-petclinic.jar"]

