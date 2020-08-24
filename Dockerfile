#
#--------------------------------------------------------------------------
# Image Setup.
# 
# See https://github.com/phusion/baseimage-docker/blob/master/Changelog.md 
# for a list of version numbers.
#--------------------------------------------------------------------------
#

ARG UBUNTU_VERSION
FROM phusion/baseimage:${UBUNTU_VERSION}-1.0.0

LABEL maintainer="Artem Fufaldin <artem.fufaldin@gmail.com>"

RUN set -xe; apt-get update && apt-get -o DPkg::options::="--force-confold" -y upgrade

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
