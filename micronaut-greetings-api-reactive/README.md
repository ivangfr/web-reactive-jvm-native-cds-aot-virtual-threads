# web-reactive-jvm-native-cds-aot-virtual-threads
## `> micronaut-greetings-api-reactive`

## Application

[`Micronaut`](https://micronaut.io/) Java Reactive Web application that exposes a simple endpoint for greetings. [[Start project link]](https://micronaut.io/launch/?type=DEFAULT&name=micronaut-greetings-api-reactive&package=com.ivanfranchin.micronautgreetingsapireactive&javaVersion=JDK_21&lang=JAVA&build=MAVEN&test=JUNIT&features=reactor&version=4.10.7)
```text
GET /greetings[?name=...]
``` 

## Running application with Maven

- Open a terminal and navigate to the `micronaut-greetings-api-reactive` directory within the `web-reactive-jvm-native-cds-aot-virtual-threads` project;

- Run the command below to start the application:
  ```bash
  ./mvnw clean mn:run
  ```

- A simple test can be done by opening a new terminal and running:
  ```bash
  curl -i "localhost:8080/greetings?name=Ivan"
  ```

- To stop the application, press `Ctrl+C` in the terminal where it is running.

## Running application as Docker container

> **Note:** Before running the application as a Docker container, you need to build the Docker images first. Use the script `build-docker-images-micronaut.sh` to build all available Docker images.

- Run the command below to start the application in:
  - JVM Mode
    ```bash
    docker run --rm --name micronaut-greetings-api-reactive \
      -p 8080:8080 \
      ivanfranchin/micronaut-greetings-api-reactive:4.10.7-21-jvm
    ```
  - Native Mode
    ```bash
    docker run --rm --name micronaut-greetings-api-reactive \
      -p 8080:8080 \
      ivanfranchin/micronaut-greetings-api-reactive:4.10.7-21-native
    ```

- A simple test can be done by opening a new terminal and running:
  ```bash
  curl -i "localhost:8080/greetings?name=Ivan"
  ```

- To stop the application, press `Ctrl+C` in the terminal where it is running or run `docker stop micronaut-greetings-api-reactive`.
