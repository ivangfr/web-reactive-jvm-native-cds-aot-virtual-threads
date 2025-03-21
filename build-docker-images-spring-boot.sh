#!/usr/bin/env bash

SECONDS=0

JAVA_VERSION=21
SPRING_BOOT_VERSION=3.4.3

echo "-----------------------------"
echo "SPRING-BOOT-GREETINGS-API-WEB"
echo "-----------------------------"

cd spring-boot-greetings-api-web

./mvnw clean package

# == JVM ==

./mvnw spring-boot:build-image \
  -Dspring-boot.build-image.imageName=ivanfranchin/spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm

./mvnw spring-boot:build-image \
  -Dspring-boot.build-image.imageName=ivanfranchin/spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm-cds \
  -DBP_JVM_CDS_ENABLED=true

./mvnw spring-boot:build-image \
  -Dspring-boot.build-image.imageName=ivanfranchin/spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm-cds-aot \
  -DBP_SPRING_AOT_ENABLED=true \
  -DBP_JVM_CDS_ENABLED=true

echo "spring.threads.virtual.enabled=true" >> src/main/resources/application.properties
./mvnw spring-boot:build-image \
  -Dspring-boot.build-image.imageName=ivanfranchin/spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm-cds-aot-vt \
  -DBP_SPRING_AOT_ENABLED=true \
  -DBP_JVM_CDS_ENABLED=true
sed -i '' '/spring.threads.virtual.enabled=true/d' src/main/resources/application.properties

# == Native ==

./mvnw -Pnative spring-boot:build-image \
  -Dspring-boot.build-image.imageName=ivanfranchin/spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-native

echo "spring.threads.virtual.enabled=true" >> src/main/resources/application.properties
./mvnw -Pnative spring-boot:build-image \
  -Dspring-boot.build-image.imageName=ivanfranchin/spring-boot-greetings-api-web:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-native-vt
sed -i '' '/spring.threads.virtual.enabled=true/d' src/main/resources/application.properties

cd ..

echo
echo "----------------------------------"
echo "SPRING-BOOT-GREETINGS-API-REACTIVE"
echo "----------------------------------"

cd spring-boot-greetings-api-reactive

./mvnw clean package

# == JVM ==

./mvnw spring-boot:build-image \
  -Dspring-boot.build-image.imageName=ivanfranchin/spring-boot-greetings-api-reactive:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm

./mvnw spring-boot:build-image \
  -Dspring-boot.build-image.imageName=ivanfranchin/spring-boot-greetings-api-reactive:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm-cds \
  -DBP_JVM_CDS_ENABLED=true

./mvnw spring-boot:build-image \
  -Dspring-boot.build-image.imageName=ivanfranchin/spring-boot-greetings-api-reactive:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-jvm-cds-aot \
  -DBP_SPRING_AOT_ENABLED=true \
  -DBP_JVM_CDS_ENABLED=true

# == Native ==

./mvnw -Pnative spring-boot:build-image \
  -Dspring-boot.build-image.imageName=ivanfranchin/spring-boot-greetings-api-reactive:${SPRING_BOOT_VERSION}-${JAVA_VERSION}-native

cd ..

duration=$SECONDS

echo "=========="
echo "Script executed in $(($duration / 60)) minutes and $(($duration % 60)) seconds."
