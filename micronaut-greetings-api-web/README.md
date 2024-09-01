# web-reactive-jvm-native-cds-aot-virtual-threads
## `> micronaut-greeting-api-web`

## Application

[`Micronaut`](https://micronaut.io/) Java Web application that exposes a simple endpoint for greetings. [[Start project link]](https://micronaut.io/launch?type=DEFAULT&name=micronaut-greetings-api-web&package=com.ivanfranchin.micronautgreetingsapiweb&javaVersion=JDK_21&lang=JAVA&build=MAVEN&test=JUNIT&version=4.5.1)
```
GET /greetings[?name=...]
```

## Running application

- Open a terminal and navigate to `web-reactive-jvm-native-cds-aot-virtual-threads/micronaut-greeting-api-web` folder

- Run the command below to start the application
  ```
  ./mvnw clean mn:run
  ```

- A simple test can be done by opening a new terminal and running
  ```
  curl -i "localhost:8080/greetings?name=Ivan"
  ```

- To stop the application, press `Ctrl+C` in its terminal
