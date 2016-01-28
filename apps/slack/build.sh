#!/usr/bin/env bash


sudo docker build \
    --tag="lburgazzoli/app-slack:1.2.6" \
    --build-arg DOCKER_USER_GID=$(id $LOGNAME -g) \
    --build-arg DOCKER_USER_UID=$(id $LOGNAME -u) \
    --build-arg APP_VERSION=1.2.6 \
    .