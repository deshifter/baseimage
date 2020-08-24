#!/usr/bin/env bash

#### halt script on error
set -ev

#### Build the Docker Images
if [ -n "${UBUNTU_VERSION}" ]; then
    docker build --build-arg ubuntu_version=${UBUNTU_VERSION} .
fi
