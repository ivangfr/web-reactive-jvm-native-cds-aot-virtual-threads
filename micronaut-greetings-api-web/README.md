# web-reactive-jvm-native-cds-aot-virtual-threads
## `> micronaut-greetings-api-web`

## Application

[`Micronaut`](https://micronaut.io/) Java Web application that exposes a simple endpoint for greetings. [[Start project link]](https://micronaut.io/launch?type=DEFAULT&name=micronaut-greetings-api-web&package=com.ivanfranchin.micronautgreetingsapiweb&javaVersion=JDK_21&lang=JAVA&build=MAVEN&test=JUNIT&version=4.7.6)
```text
GET /greetings[?name=...]
```

## Running application

- Open a terminal and navigate to the `micronaut-greetings-api-web` directory within the `web-reactive-jvm-native-cds-aot-virtual-threads` project;

- Run the command below to start the application:
  ```bash
  ./mvnw clean mn:run
  ```

- A simple test can be done by opening a new terminal and running:
  ```bash
  curl -i "localhost:8080/greetings?name=Ivan"
  ```

- To stop the application, press `Ctrl+C` in the terminal where it is running.
