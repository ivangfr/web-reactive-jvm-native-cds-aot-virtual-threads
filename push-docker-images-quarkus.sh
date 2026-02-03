#!/usr/bin/env bash

JAVA_VERSION=21
QUARKUS_VERSION=3.31.1

podman push ivanfranchin/quarkus-greetings-api-web:${QUARKUS_VERSION}-${JAVA_VERSION}-jvm
podman push ivanfranchin/quarkus-greetings-api-web:${QUARKUS_VERSION}-${JAVA_VERSION}-native
podman push ivanfranchin/quarkus-greetings-api-reactive:${QUARKUS_VERSION}-${JAVA_VERSION}-jvm
podman push ivanfranchin/quarkus-greetings-api-reactive:${QUARKUS_VERSION}-${JAVA_VERSION}-native