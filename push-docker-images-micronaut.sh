#!/usr/bin/env bash

JAVA_VERSION=21
MICRONAUT_VERSION=4.6.3

docker push ivanfranchin/micronaut-greetings-api-web:${MICRONAUT_VERSION}-${JAVA_VERSION}-jvm
docker push ivanfranchin/micronaut-greetings-api-web:${MICRONAUT_VERSION}-${JAVA_VERSION}-native
docker push ivanfranchin/micronaut-greetings-api-reactive:${MICRONAUT_VERSION}-${JAVA_VERSION}-jvm
docker push ivanfranchin/micronaut-greetings-api-reactive:${MICRONAUT_VERSION}-${JAVA_VERSION}-native