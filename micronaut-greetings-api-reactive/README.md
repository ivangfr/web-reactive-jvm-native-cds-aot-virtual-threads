# web-reactive-jvm-native-cds-aot-virtual-threads
## `> micronaut-greeting-api-reactive`

## Application

[`Micronaut`](https://micronaut.io/) Java Reactive Web application that exposes a simple endpoint for greetings. [[Start project link]](https://micronaut.io/launch?type=DEFAULT&name=micronaut-greetings-api-reactive&package=com.ivanfranchin.micronautgreetingsapireactive&javaVersion=JDK_21&lang=JAVA&build=MAVEN&test=JUNIT&features=reactor&version=4.6.3)
```
GET /greetings[?name=...]
``` 

## Running application

- Open a terminal and navigate to `web-reactive-jvm-native-cds-aot-virtual-threads/micronaut-greeting-api-reactive` folder

- Run the command below to start the application
  ```
  ./mvnw clean mn:run
  ```

- A simple test can be done by opening a new terminal and running
  ```
  curl -i "localhost:8080/greetings?name=Ivan"
  ```

- To stop the application, press `Ctrl+C` in its terminal
