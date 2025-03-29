#!/usr/bin/env bash

JAVA_VERSION=21
SPRING_BOOT_VERSION=3.4.3

podman push ivanfranchin/spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm
podman push ivanfranchin/spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm-cds
podman push ivanfranchin/spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm-cds-aot
podman push ivanfranchin/spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm-cds-aot-vt
podman push ivanfranchin/spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-native
podman push ivanfranchin/spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-native-vt
podman push ivanfranchin/spring-boot-greetings-api-reactive:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm
podman push ivanfranchin/spring-boot-greetings-api-reactive:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm-cds
podman push ivanfranchin/spring-boot-greetings-api-reactive:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm-cds-aot
podman push ivanfranchin/spring-boot-greetings-api-reactive:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-native