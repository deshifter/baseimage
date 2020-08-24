#!/usr/bin/env bash

#### halt script on error
set -ev

#### Build the Docker Images
if [ -n "${UBUNTU_VERSION}" ]; then
    docker build -t deshifter/baseimage --build-arg UBUNTU_VERSION=${UBUNTU_VERSION} .
fi
