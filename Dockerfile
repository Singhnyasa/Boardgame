# Use OpenJDK 17 Alpine base
FROM openjdk:17-alpine3.19

# Set environment variable for app directory
ENV APP_HOME /usr/src/app

# Copy the built jar into container
COPY target/*.jar $APP_HOME/app.jar

# Set working directory
WORKDIR $APP_HOME

# Expose internal container port (app runs on 8080)
EXPOSE 8080

# Start the application
CMD ["java", "-jar", "app.jar"]
