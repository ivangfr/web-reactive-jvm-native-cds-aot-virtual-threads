# web-reactive-jvm-native-cds-aot-virtual-threads

In this project, we will implement two Spring Boot applications, one using Spring Web and the other Spring Reactive, and build JVM and Native Docker images for different configurations - enabling or not virtual threads, CDS, and AOT optimizations - and compare them.

## Applications

- ### [spring-boot-greetings-web](https://github.com/ivangfr/web-reactive-jvm-native-cds-aot-virtual-threads/tree/main/spring-boot-greetings-api-web)
- ### [spring-boot-greetings-rective](https://github.com/ivangfr/web-reactive-jvm-native-cds-aot-virtual-threads/tree/main/spring-boot-greetings-api-reactive)

## Prerequisites

- [`Java 21+`](https://www.oracle.com/java/technologies/downloads/#java21)
- [`Docker`](https://www.docker.com/)

## Docker Images

The application’s JVM and Native Docker images can be found in [this Docker Hub link](https://hub.docker.com/search?q=ivanfranchin).

## Bash scripts

- **docker-build.sh**: this script builds all Docker images
- **remove-docker-images.sh**: this script removes all Docker images
