# web-reactive-jvm-native-cds-aot-virtual-threads
## `> spring-boot-greeting-api-reactive`

## Application

[`Spring Boot`](https://docs.spring.io/spring-boot/index.html) Java Reacive Web application that exposes a simple endpoint for greetings. [[Start project link]](https://start.spring.io/#!type=maven-project&language=java&platformVersion=3.3.4&packaging=jar&jvmVersion=21&groupId=com.ivanfranchin&artifactId=spring-boot-greetings-api-reactive&name=spring-boot-greetings-api-reactive&description=Demo%20project%20for%20Spring%20Boot&packageName=com.ivanfranchin.springbootgreetingsapireactive&dependencies=webflux)
```
GET /greetings[?name=...]
```

## Running application

- Open a terminal and navigate to `web-reactive-jvm-native-cds-aot-virtual-threads/spring-boot-greeting-api-reactive` folder

- Run the command below to start the application
  ```
  ./mvnw clean spring-boot:run
  ```

- A simple test can be done by opening a new terminal and running
  ```
  curl -i "localhost:8080/greetings?name=Ivan"
  ```

- To stop the application, press `Ctrl+C` in its terminal
