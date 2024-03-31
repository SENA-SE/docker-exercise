#!/bin/bash

# Exit script if fails
set -e

# Check the number of arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <GitHub repository> <Docker Hub repository>"
    exit 1
fi

# Check if docker.sock is mounted
if [ ! -S "/var/run/docker.sock" ]; then
    echo "Docker socket not found. Please mount -v /var/run/docker.sock:/var/run/docker.sock"
    exit 1
fi

# Docker Hub credentials should be passed as environment variables
if [ -z "${DOCKER_USER}" ] || [ -z "${DOCKER_PWD}" ]; then
    echo "Docker Hub credentials not provided. Set DOCKER_USER and DOCKER_PWD environment variables."
    exit 1
fi


GITHUB_REPO=$1
DOCKER_REPO=$2

# Clone GitHub repository
git clone https://github.com/${GITHUB_REPO}.git
REPO_NAME=$(basename "${GITHUB_REPO}")

cd "${REPO_NAME}"

# Build Docker image
docker build -t "${DOCKER_REPO}" .

docker push "${DOCKER_REPO}"

cd ..
rm -rf "${REPO_NAME}"

echo "Image ${DOCKER_REPO} pushed to Docker Hub successfully."
