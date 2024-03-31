#!/bin/bash

# Exit script if fails
set -e

# Check the number of arguments
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <GitHub repository> <Docker Hub repository>"
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
