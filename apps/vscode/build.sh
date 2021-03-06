#!/usr/bin/env bash

APP_NAME=vscode
APP_GROUP=lburgazzoli

if [ "$#" -eq 1 ]; then
    if [[ "$1" == "-f" ]]; then
    docker image rm ${APP_GROUP}/app-${APP_NAME}
    fi
fi

docker build \
    --tag="lburgazzoli/app-${APP_NAME}" \
    --build-arg APP_NAME=$APP_NAME \
    --build-arg DOCKER_USER=$LOGNAME \
    --build-arg DOCKER_USER_GID=$(id $LOGNAME -g) \
    --build-arg DOCKER_USER_UID=$(id $LOGNAME -u) \
    .
