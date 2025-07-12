#!/usr/bin/env bash

SECONDS=0

JAVA_VERSION=21
QUARKUS_VERSION=3.24.3

echo "-------------------------"
echo "QUARKUS-GREETINGS-API-WEB"
echo "-------------------------"

cd quarkus-greetings-api-web

./mvnw clean package

# == JVM ==

./mvnw clean package

docker build -f src/main/docker/Dockerfile.jvm \
  -t ivanfranchin/quarkus-greetings-api-web:${QUARKUS_VERSION}-${JAVA_VERSION}-jvm .

# == Native ==

./mvnw clean package -Pnative -Dquarkus.native.container-build=true

docker build -f src/main/docker/Dockerfile.native \
  -t ivanfranchin/quarkus-greetings-api-web:${QUARKUS_VERSION}-${JAVA_VERSION}-native .

cd ..

echo
echo "------------------------------"
echo "QUARKUS-GREETINGS-API-REACTIVE"
echo "------------------------------"

cd quarkus-greetings-api-reactive

./mvnw clean package

# == JVM ==

./mvnw clean package

docker build -f src/main/docker/Dockerfile.jvm \
  -t ivanfranchin/quarkus-greetings-api-reactive:${QUARKUS_VERSION}-${JAVA_VERSION}-jvm .

# == Native ==

./mvnw clean package -Pnative -Dquarkus.native.container-build=true

docker build -f src/main/docker/Dockerfile.native \
  -t ivanfranchin/quarkus-greetings-api-reactive:${QUARKUS_VERSION}-${JAVA_VERSION}-native .

cd ..

duration=$SECONDS

echo "=========="
echo "Script executed in $(($duration / 60)) minutes and $(($duration % 60)) seconds."
