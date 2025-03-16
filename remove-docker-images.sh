#!/usr/bin/env bash

JAVA_VERSION=21
SPRING_BOOT_VERSION=3.4.3
QUARKUS_VERSION=3.19.3
MICRONAUT_VERSION=4.7.6

echo "-----------------------------"
echo "SPRING-BOOT-GREETINGS-API-WEB"
echo "-----------------------------"

docker rmi \
  ivanfranchin/spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm \
  ivanfranchin/spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm-cds \
  ivanfranchin/spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm-cds-aot \
  ivanfranchin/spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm-cds-aot-vt \
  ivanfranchin/spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-native \
  ivanfranchin/spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-native-vt

echo
echo "----------------------------------"
echo "SPRING-BOOT-GREETINGS-API-REACTIVE"
echo "----------------------------------"

docker rmi \
  ivanfranchin/spring-boot-greetings-api-reactive:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm \
  ivanfranchin/spring-boot-greetings-api-reactive:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm-cds \
  ivanfranchin/spring-boot-greetings-api-reactive:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm-cds-aot \
  ivanfranchin/spring-boot-greetings-api-reactive:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-native

echo
echo "-------------------------"
echo "QUARKUS-GREETINGS-API-WEB"
echo "-------------------------"

docker rmi \
  ivanfranchin/quarkus-greetings-api-web:${QUARKUS_VERSION}-${JAVA_VERSION}-jvm \
  ivanfranchin/quarkus-greetings-api-web:${QUARKUS_VERSION}-${JAVA_VERSION}-native

echo
echo "------------------------------"
echo "QUARKUS-GREETINGS-API-REACTIVE"
echo "------------------------------"

docker rmi \
  ivanfranchin/quarkus-greetings-api-reactive:${QUARKUS_VERSION}-${JAVA_VERSION}-jvm \
  ivanfranchin/quarkus-greetings-api-reactive:${QUARKUS_VERSION}-${JAVA_VERSION}-native

echo
echo "---------------------------"
echo "MICRONAUT-GREETINGS-API-WEB"
echo "---------------------------"

docker rmi \
  ivanfranchin/micronaut-greetings-api-web:${MICRONAUT_VERSION}-${JAVA_VERSION}-jvm \
  ivanfranchin/micronaut-greetings-api-web:${MICRONAUT_VERSION}-${JAVA_VERSION}-native

echo
echo "--------------------------------"
echo "MICRONAUT-GREETINGS-API-REACTIVE"
echo "--------------------------------"

docker rmi \
  ivanfranchin/micronaut-greetings-api-reactive:${MICRONAUT_VERSION}-${JAVA_VERSION}-jvm \
  ivanfranchin/micronaut-greetings-api-reactive:${MICRONAUT_VERSION}-${JAVA_VERSION}-native
