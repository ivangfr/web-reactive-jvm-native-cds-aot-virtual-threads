# web-reactive-jvm-native-cds-aot-virtual-threads
## `> quarkus-greetings-api-web`

## Application

[`Quarkus`](https://quarkus.io/) Java Web application that exposes a simple endpoint for greetings. [[Start project link]](https://code.quarkus.io/?g=com.ivanfranchin&a=quarkus-greetings-api-web&e=rest-jackson)
```text
GET /greetings[?name=...]
```

## Running application with Maven

- Open a terminal and navigate to the `quarkus-greetings-api-web` directory within the `web-reactive-jvm-native-cds-aot-virtual-threads` project;

- Run the command below to start the application:
  ```bash
  ./mvnw clean compile quarkus:dev
  ```

- A simple test can be done by opening a new terminal and running:
  ```bash
  curl -i "localhost:8080/greetings?name=Ivan"
  ```

- To stop the application, press `Ctrl+C` in the terminal where it is running.

## Running application as Docker container

> **Note:** Before running the application as a Docker container, you need to build the Docker images first. Use the script `build-docker-images-quarkus.sh` to build all available Docker images.

- Run the command below to start the application in:
  - JVM Mode
    ```bash
    docker run --rm --name quarkus-greetings-api-web \
      -p 8080:8080 \
      ivanfranchin/quarkus-greetings-api-web:3.31.1-21-jvm
    ```
  - Native Mode
    ```bash
    docker run --rm --name quarkus-greetings-api-web \
      -p 8080:8080 \
      ivanfranchin/quarkus-greetings-api-web:3.31.1-21-native
    ```

- A simple test can be done by opening a new terminal and running:
  ```bash
  curl -i "localhost:8080/greetings?name=Ivan"
  ```

- To stop the application, press `Ctrl+C` in the terminal where it is running or run `docker stop quarkus-greetings-api-web`.
