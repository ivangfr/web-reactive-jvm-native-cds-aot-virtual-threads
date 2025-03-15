#!/usr/bin/env bash

SECONDS=0

JAVA_VERSION=21
MICRONAUT_VERSION=4.6.3

echo "---------------------------"
echo "MICRONAUT-GREETINGS-API-WEB"
echo "---------------------------"

cd micronaut-greetings-api-web

./mvnw clean package

# == JVM ==

./mvnw package -Dpackaging=docker \
  -Djib.to.image=ivanfranchin/micronaut-greetings-api-web:${MICRONAUT_VERSION}-${JAVA_VERSION}-jvm

# == Native ==

./mvnw package -Pgraalvm -Dpackaging=docker-native \
  -Djib.to.image=ivanfranchin/micronaut-greetings-api-web:${MICRONAUT_VERSION}-${JAVA_VERSION}-native

cd ..

echo
echo "--------------------------------"
echo "MICRONAUT-GREETINGS-API-REACTIVE"
echo "--------------------------------"

cd micronaut-greetings-api-reactive

./mvnw clean package

# == JVM ==

./mvnw package -Dpackaging=docker \
  -Djib.to.image=ivanfranchin/micronaut-greetings-api-reactive:${MICRONAUT_VERSION}-${JAVA_VERSION}-jvm

# == Native ==

./mvnw package -Pgraalvm -Dpackaging=docker-native \
  -Djib.to.image=ivanfranchin/micronaut-greetings-api-reactive:${MICRONAUT_VERSION}-${JAVA_VERSION}-native

cd ..

duration=$SECONDS

echo "=========="
echo "Script executed in $(($duration / 60)) minutes and $(($duration % 60)) seconds."
