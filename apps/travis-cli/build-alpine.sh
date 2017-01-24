#!/usr/bin/env bash


sudo docker build \
    --file=Dockerfile.alpine \
    --tag="lburgazzoli/app-travic-cli" \
    --build-arg DOCKER_USER=$LOGNAME \
    --build-arg DOCKER_USER_GID=$(id $LOGNAME -g) \
    --build-arg DOCKER_USER_UID=$(id $LOGNAME -u) \
    .

#docker run --rm -v $PWD:/repo -v ~/.travis:/travis andredumas/travis-ci-cli 
