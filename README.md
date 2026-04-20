# web-reactive-jvm-native-cds-aot-virtual-threads

[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Buy Me A Coffee](https://img.shields.io/badge/Buy%20Me%20A%20Coffee-ivan.franchin-FFDD00?logo=buymeacoffee&logoColor=black)](https://buymeacoffee.com/ivan.franchin)


In this project, we will create six applications using [`Spring Boot`](https://docs.spring.io/spring-boot/index.html), [`Quarkus`](https://quarkus.io/), and [`Micronaut`](https://micronaut.io/) frameworks.

For each framework, we will implement one app with traditional blocking `Web` using `Apache Tomcat` and another app with non-blocking `Reactive` using `Netty`. We will also build both `JVM` and `Native` Docker images for the applications.

For the `Spring Boot` apps, we will build additional Docker images with different configurations, including enabling or not some Java optimizations like `Virtual Threads` ([`JEP 444`](https://openjdk.org/jeps/444)), `CDS` ([`JEP 310`](https://openjdk.org/jeps/310)), and `AOT` ([`JEP 295`](https://openjdk.org/jeps/295)).

## Proof-of-Concepts & Articles

On [ivangfr.github.io](https://ivangfr.github.io), I have compiled my Proof-of-Concepts (PoCs) and articles. You can easily search for the technology you are interested in using the filter. Who knows, perhaps I have already implemented a PoC or written an article about what you are looking for.

## Additional Readings

### Spring Boot Performance Benchmark

- \[**Medium**\] [**Spring Boot Performance Benchmark: Web, Reactive, CDS, AOT, Virtual Threads, JVM, and Native**](https://medium.com/@ivangfr/spring-boot-performance-benchmark-web-reactive-cds-aot-virtual-threads-jvm-and-native-29295c8099b0)
- \[**Medium**\] [**Spring Boot 3.3.2 Benchmark: Web, Reactive, CDS, AOT, Virtual Threads, JVM, and Native**](https://medium.com/@ivangfr/spring-boot-3-3-2-benchmark-web-reactive-cds-aot-virtual-threads-jvm-and-native-42d3b704e88e)
- \[**Medium**\] [**Spring Boot 3.3.4 Benchmark: Web, Reactive, CDS, AOT, Virtual Threads, JVM, and Native**](https://medium.com/@ivangfr/spring-boot-3-3-4-benchmark-web-reactive-cds-aot-virtual-threads-jvm-and-native-5a3ab117054c)
- \[**Medium**\] [**Spring Boot 3.4.3 Benchmark: Web, Reactive, CDS, AOT, Virtual Threads, JVM, and Native**](https://medium.com/@ivangfr/spring-boot-3-4-3-benchmark-web-reactive-cds-aot-virtual-threads-jvm-and-native-47bff836992e)
- \[**Medium**\] [**Spring Boot 3.5.3 Benchmark: Web, Reactive, CDS, AOT, Virtual Threads, JVM, and Native**](https://medium.com/@ivangfr/spring-boot-3-5-3-benchmark-web-reactive-cds-aot-virtual-threads-jvm-and-native-87baf806c5bc)
- \[**Medium**\] [**Spring Boot 4.0.2 Benchmark: Web, Reactive, CDS, AOT, Virtual Threads, JVM, and Native**](https://medium.com/@ivangfr/spring-boot-4-0-2-benchmark-web-reactive-cds-aot-virtual-threads-jvm-and-native-19ed5a10c8cd)
- \[**Medium**\] [**Spring Boot 4.0.2 Benchmark (Java 21 vs. 25): Web, Reactive, CDS, AOT, Virtual Threads, JVM, and Native**](https://medium.com/@ivangfr/spring-boot-4-0-2-benchmark-java-21-vs-25-web-reactive-cds-aot-v-threads-jvm-and-native-ffda008c6033)

### Java Frameworks Performance Benchmark

- \[**Medium**\] [**Java Frameworks Performance Benchmark: Spring Boot vs. Quarkus vs. Micronaut**](https://medium.com/@ivangfr/java-frameworks-performance-benchmark-spring-boot-vs-quarkus-vs-micronaut-028b6dbfef2e)
- \[**Medium**\] [**Performance Benchmark: Spring Boot 3.3.2 vs. Quarkus 3.13.2 vs. Micronaut 4.5.1**](https://medium.com/@ivangfr/performance-benchmark-spring-boot-3-3-2-vs-quarkus-3-13-2-vs-micronaut-4-5-1-515bae82d04f)
- \[**Medium**\] [**Performance Benchmark: Spring Boot 3.3.4 vs. Quarkus 3.15.1 vs. Micronaut 4.6.3**](https://medium.com/@ivangfr/performance-benchmark-spring-boot-3-3-4-vs-quarkus-3-15-1-vs-micronaut-4-6-3-9691c4cfcb2a)
- \[**Medium**\] [**Performance Benchmark: Spring Boot 3.4.3 vs. Quarkus 3.19.3 vs. Micronaut 4.7.6**](https://medium.com/@ivangfr/performance-benchmark-spring-boot-3-4-3-vs-quarkus-3-19-3-vs-micronaut-4-7-6-aaadfb0382b4)
- \[**Medium**\] [**Performance Benchmark: Spring Boot 3.5.3 vs. Quarkus 3.24.3 vs. Micronaut 4.9.1**](https://medium.com/@ivangfr/performance-benchmark-spring-boot-3-5-3-vs-quarkus-3-24-3-vs-micronaut-4-9-1-8651b4982be3)
- \[**Medium**\] [**Performance Benchmark: Spring Boot 4.0.2 vs. Quarkus 3.31.1 vs. Micronaut 4.10.7**](https://medium.com/@ivangfr/performance-benchmark-spring-boot-4-0-2-vs-quarkus-3-31-1-vs-micronaut-4-10-7-b7d637646704)

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
| Quarkus     | 3.31.1  |
| Micronaut   | 4.10.7  |
| Spring Boot | 4.0.2   |

## Thread Configuration for Web Apps

For fair benchmark comparison, the blocking Web MVC applications (`spring-boot-greetings-api-web`, `quarkus-greetings-api-web`, and `micronaut-greetings-api-web`) are configured with 200 threads:

| Framework   | Configuration Property | Default (without config) |
|-------------|------------------------|--------------------------|
| Spring Boot | Tomcat default | 200 |
| Quarkus     | `quarkus.thread-pool.max-threads=200` | Math.max(8×CPU, 200) |
| Micronaut   | Tomcat default | 200 |

This ensures all three frameworks use the same number of worker threads during benchmarks.

## Virtual Threads Configuration for Web Apps

Virtual threads are disabled in all blocking applications Web MVC applications (`spring-boot-greetings-api-web`, `quarkus-greetings-api-web`, and `micronaut-greetings-api-web`) to ensure fair benchmark comparison. The table below shows the default virtual threads setting for each framework:

| Framework   | Virtual Threads | Configuration |
|-------------|----------------|---------------|
| Spring Boot | Disabled by default | - |
| Quarkus     | Disabled by default | - |
| Micronaut   | Enabled by default  | `micronaut.servlet.enable-virtual-threads=false` |

This ensures all three Web applications use regular platform threads (200 max by default) during benchmarks.

## Prerequisites

- [`Java 25`](https://www.oracle.com/java/technologies/downloads/#java25) or higher;
- A containerization tool (e.g., [`Docker`](https://www.docker.com), [`Podman`](https://podman.io), etc.)

## Docker Images

The application's JVM and native Docker images can be found at [this Docker Hub link](https://hub.docker.com/u/ivanfranchin).

## Bash scripts

- **build-docker-images-spring-boot.sh**: script to build Spring Boot Docker images
- **build-docker-images-quarkus.sh**: script to build Quarkus Docker images
- **build-docker-images-micronaut.sh**: script to build Micronaut Docker images
- **remove-docker-images.sh**: script to remove all Docker images

## Support

If you find this useful, consider buying me a coffee:

<a href="https://buymeacoffee.com/ivan.franchin"><img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" alt="Buy Me A Coffee" height="50"></a>

## License

This project is licensed under the [MIT License](./LICENSE).
