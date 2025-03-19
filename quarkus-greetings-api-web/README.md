# web-reactive-jvm-native-cds-aot-virtual-threads
## `> quarkus-greetings-api-web`

## Application

[`Quarkus`](https://quarkus.io/) Java Web application that exposes a simple endpoint for greetings. [[Start project link]](https://code.quarkus.io/?g=com.ivanfranchin&a=quarkus-greetings-api-web&e=rest-jackson)
```text
GET /greetings[?name=...]
```

## Running application

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
