#!/usr/bin/env bash

#### halt script on error
set -ev

#### Build the Docker Images
if [ -n "${UBUNTU_VERSION}" ]; then
    echo "$DOCKER_HUB_PASSWORD" | docker login -u "$DOCKER_HUB_USER" --password-stdin
    docker images
    docker tag deshifter/baseimage "deshifter/baseimage:$UBUNTU_VERSION"
    docker push deshifter/baseimage
fi
