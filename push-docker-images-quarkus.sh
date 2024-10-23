#!/usr/bin/env bash

JAVA_VERSION=21
QUARKUS_VERSION=3.15.1

docker push ivanfranchin/quarkus-greetings-api-web:${QUARKUS_VERSION}-${JAVA_VERSION}-jvm
docker push ivanfranchin/quarkus-greetings-api-web:${QUARKUS_VERSION}-${JAVA_VERSION}-native
docker push ivanfranchin/quarkus-greetings-api-reactive:${QUARKUS_VERSION}-${JAVA_VERSION}-jvm
docker push ivanfranchin/quarkus-greetings-api-reactive:${QUARKUS_VERSION}-${JAVA_VERSION}-native