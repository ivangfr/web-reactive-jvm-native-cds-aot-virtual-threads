# web-reactive-jvm-native-cds-aot-virtual-threads

In this project, we will create six applications using [`Spring Boot`](https://docs.spring.io/spring-boot/index.html), [`Quarkus`](https://quarkus.io/), and [`Micronaut`](https://micronaut.io/) frameworks.

For each framework, we will implement one app with traditional blocking `Web` using `Apache Tomcat` and another app with non-blocking `Reactive` using `Netty`. We will also build both `JVM` and `Native` Docker images for the applications.

For the `Spring Boot` apps, we will build additional Docker images with different configurations, including enabling or not some Java optimizations like `Virtual Threads` ([`JEP 444`](https://openjdk.org/jeps/444)), `CDS` ([`JEP 310`](https://openjdk.org/jeps/310)), and `AOT` ([`JEP 295`](https://openjdk.org/jeps/295)).

## Proof-of-Concepts & Articles

On [ivangfr.github.io](https://ivangfr.github.io), I have compiled my Proof-of-Concepts (PoCs) and articles. You can easily search for the technology you are interested in by using the filter. Who knows, perhaps I have already implemented a PoC or written an article about what you are looking for.

## Additional Readings

### Spring Boot Performance Benchmark

- \[**Medium**\] [**Spring Boot Performance Benchmark: Web, Reactive, CDS, AOT, Virtual Threads, JVM, and Native**](https://medium.com/@ivangfr/spring-boot-performance-benchmark-web-reactive-cds-aot-virtual-threads-jvm-and-native-29295c8099b0)
- \[**Medium**\] [**Spring Boot 3.3.2 Benchmark: Web, Reactive, CDS, AOT, Virtual Threads, JVM, and Native**](https://medium.com/@ivangfr/spring-boot-3-3-2-benchmark-web-reactive-cds-aot-virtual-threads-jvm-and-native-42d3b704e88e)

### Java Frameworks Performance Benchmark

- \[**Medium**\] [**Java Frameworks Performance Benchmark: Spring Boot vs. Quarkus vs. Micronaut**](https://medium.com/@ivangfr/java-frameworks-performance-benchmark-spring-boot-vs-quarkus-vs-micronaut-028b6dbfef2e)
- \[**Medium**\] [**Performance Benchmark: Spring Boot 3.3.2 vs. Quarkus 3.13.2 vs. Micronaut 4.5.1**](https://medium.com/@ivangfr/performance-benchmark-spring-boot-3-3-2-vs-quarkus-3-13-2-vs-micronaut-4-5-1-515bae82d04f)

## Applications

- ### [spring-boot-greetings-api-web](https://github.com/ivangfr/web-reactive-jvm-native-cds-aot-virtual-threads/tree/main/spring-boot-greetings-api-web)
- ### [spring-boot-greetings-api-rective](https://github.com/ivangfr/web-reactive-jvm-native-cds-aot-virtual-threads/tree/main/spring-boot-greetings-api-reactive)
- ### [quarkus-greetings-api-web](https://github.com/ivangfr/web-reactive-jvm-native-cds-aot-virtual-threads/tree/main/quarkus-greetings-api-web)
- ### [quarkus-greetings-api-rective](https://github.com/ivangfr/web-reactive-jvm-native-cds-aot-virtual-threads/tree/main/quarkus-greetings-api-reactive)
- ### [micronaut-greetings-api-web](https://github.com/ivangfr/web-reactive-jvm-native-cds-aot-virtual-threads/tree/main/micronaut-greetings-api-web)
- ### [micronaut-greetings-api-rective](https://github.com/ivangfr/web-reactive-jvm-native-cds-aot-virtual-threads/tree/main/micronaut-greetings-api-reactive)

## Latest Framework Version Used

| Framework   | Version |
|-------------|---------|
| Quarkus     | 3.12.2  |
| Micronaut   | 4.5.1   |
| Spring Boot | 3.3.2   |

## Prerequisites

- [`Java 21+`](https://www.oracle.com/java/technologies/downloads/#java21)
- [`Docker`](https://www.docker.com/)

## Docker Images

The application's JVM and native Docker images can be found at [this Docker Hub link](https://hub.docker.com/u/ivanfranchin).

## Bash scripts

- **docker-build-spring-boot.sh**: this script builds Spring Boot Docker images
- **docker-build-quarkus.sh**: this script builds Quarkus Docker images
- **docker-build-micronaut.sh**: this script builds Micronaut Docker images
- **remove-docker-images.sh**: this script removes all Docker images
