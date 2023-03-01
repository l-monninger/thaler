#!/bin/bash

# container
if [[ -z "${CONTAINER_NAME}" ]]; then
    export CONTAINER_NAME="thaler-ubuntu-22-10"
fi

# version
if [[ -z "${VERSION}" ]]; then
    export VERSION="latest"
fi