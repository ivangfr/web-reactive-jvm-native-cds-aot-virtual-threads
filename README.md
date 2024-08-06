# web-reactive-jvm-native-cds-aot-virtual-threads

In this project, we will implement two Spring Boot applications, one using Spring Web and the other Spring Reactive, and build JVM and Native Docker images for different configurations - enabling or not virtual threads, CDS, and AOT optimizations - and compare them.

## Proof-of-Concepts & Articles

On [ivangfr.github.io](https://ivangfr.github.io), I have compiled my Proof-of-Concepts (PoCs) and articles. You can easily search for the technology you are interested in by using the filter. Who knows, perhaps I have already implemented a PoC or written an article about what you are looking for.

## Additional Readings

- \[**Medium**\] [**Spring Boot Performance Benchmark: Web, Reactive, CDS, AOT, Virtual Threads, JVM, and Native**](https://medium.com/@ivangfr/spring-boot-performance-benchmark-web-reactive-cds-aot-virtual-threads-jvm-and-native-29295c8099b0)
- \[**Medium**\] [**Spring Boot 3.3.2 Benchmark: Web, Reactive, CDS, AOT, Virtual Threads, JVM, and Native**](https://medium.com/@ivangfr/spring-boot-3-3-2-benchmark-web-reactive-cds-aot-virtual-threads-jvm-and-native-42d3b704e88e)

## Applications

- ### [spring-boot-greetings-web](https://github.com/ivangfr/web-reactive-jvm-native-cds-aot-virtual-threads/tree/main/spring-boot-greetings-api-web)
- ### [spring-boot-greetings-rective](https://github.com/ivangfr/web-reactive-jvm-native-cds-aot-virtual-threads/tree/main/spring-boot-greetings-api-reactive)

## Prerequisites

- [`Java 21+`](https://www.oracle.com/java/technologies/downloads/#java21)
- [`Docker`](https://www.docker.com/)

## Docker Images

The application's JVM and native Docker images can be found at [this Docker Hub link](https://hub.docker.com/u/ivanfranchin).

## Bash scripts

- **docker-build.sh**: this script builds all Docker images
- **remove-docker-images.sh**: this script removes all Docker images
