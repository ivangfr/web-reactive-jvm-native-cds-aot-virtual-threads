#!/usr/bin/env bash

JAVA_VERSION=21
MICRONAUT_VERSION=4.10.7

podman push ivanfranchin/micronaut-greetings-api-web:${MICRONAUT_VERSION}-${JAVA_VERSION}-jvm
podman push ivanfranchin/micronaut-greetings-api-web:${MICRONAUT_VERSION}-${JAVA_VERSION}-native
podman push ivanfranchin/micronaut-greetings-api-reactive:${MICRONAUT_VERSION}-${JAVA_VERSION}-jvm
podman push ivanfranchin/micronaut-greetings-api-reactive:${MICRONAUT_VERSION}-${JAVA_VERSION}-native