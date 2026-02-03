# web-reactive-jvm-native-cds-aot-virtual-threads
## `> spring-boot-greetings-api-web`

## Application

[`Spring Boot`](https://docs.spring.io/spring-boot/index.html) Java Web application that exposes a simple endpoint for greetings. [[Start project link]](https://start.spring.io/#!type=maven-project&language=java&platformVersion=4.0.2&packaging=jar&configurationFileFormat=properties&jvmVersion=21&groupId=com.ivanfranchin&artifactId=spring-boot-greetings-api-web&name=spring-boot-greetings-api-web&description=Demo%20project%20for%20Spring%20Boot&packageName=com.ivanfranchin.springbootgreetingsapiweb&dependencies=web)
```text
GET /greetings[?name=...]
```

## Running application with Maven

- Open a terminal and navigate to the `spring-boot-greetings-api-web` directory within the `web-reactive-jvm-native-cds-aot-virtual-threads` project;

- Run the command below to start the application:
  ```bash
  ./mvnw clean spring-boot:run
  ```

- A simple test can be done by opening a new terminal and running:
  ```bash
  curl -i "localhost:8080/greetings?name=Ivan"
  ```

- To stop the application, press `Ctrl+C` in the terminal where it is running.

## Running application as Docker container

> **Note:** Before running the application as a Docker container, you need to build the Docker images first. Use the script `build-docker-images-spring-boot.sh` to build all available Docker images.

- Run the command below to start the application in:
  - JVM Mode
    ```bash
    docker run --rm --name spring-boot-greetings-api-web \
      -p 8080:8080 \
      ivanfranchin/spring-boot-greetings-api-web:4.0.2-21-jvm
    ```
  - Native Mode
    ```bash
    docker run --rm --name spring-boot-greetings-api-web \
      -p 8080:8080 \
      ivanfranchin/spring-boot-greetings-api-web:4.0.2-21-native
    ```

- A simple test can be done by opening a new terminal and running:
  ```bash
  curl -i "localhost:8080/greetings?name=Ivan"
  ```

- To stop the application, press `Ctrl+C` in the terminal where it is running or run `docker stop spring-boot-greetings-api-web`.
