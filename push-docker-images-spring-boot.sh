#!/usr/bin/env bash

JAVA_VERSION=21
SPRING_BOOT_VERSION=3.4.3

docker push ivanfranchin/spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm
docker push ivanfranchin/spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm-cds
docker push ivanfranchin/spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm-cds-aot
docker push ivanfranchin/spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm-cds-aot-vt
docker push ivanfranchin/spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-native
docker push ivanfranchin/spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-native-vt
docker push ivanfranchin/spring-boot-greetings-api-reactive:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm
docker push ivanfranchin/spring-boot-greetings-api-reactive:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm-cds
docker push ivanfranchin/spring-boot-greetings-api-reactive:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm-cds-aot
docker push ivanfranchin/spring-boot-greetings-api-reactive:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-native