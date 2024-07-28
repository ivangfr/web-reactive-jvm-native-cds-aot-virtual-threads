#!/usr/bin/env bash

JAVA_VERSION=21
SPRING_BOOT_VERSION=3.3.2

echo
echo "-----------------------------"
echo "SPRING-BOOT-GREETINGS-API-WEB"
echo "-----------------------------"

docker rmi \
  spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm \
  spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm-cds \
  spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm-cds-aot \
  spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm-cds-aot-vt \
  spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-native \
  spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-native-vt

echo
echo "----------------------------------"
echo "SPRING-BOOT-GREETINGS-API-REACTIVE"
echo "----------------------------------"

docker rmi \
  spring-boot-greetings-api-reactive:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm \
  spring-boot-greetings-api-reactive:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm-cds \
  spring-boot-greetings-api-reactive:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm-cds-aot \
  spring-boot-greetings-api-reactive:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-native
