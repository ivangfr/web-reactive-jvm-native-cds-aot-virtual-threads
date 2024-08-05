# web-reactive-jvm-native-cds-aot-virtual-threads
## `> spring-boot-greeting-api-reactive`

## Application

- ### spring-boot-greeting-api-reactive

  [`Spring Boot`](https://docs.spring.io/spring-boot/docs/current/reference/htmlsingle/) Java Reacive Web application that exposes a simple endpoint for greetings.
  
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
