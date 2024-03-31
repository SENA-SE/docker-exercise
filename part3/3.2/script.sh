#!/bin/bash

# USAGE: $0 GITHUB_URL GITHUB_REPOSITORY_NAME DOCKER_HUB_REPOSITORY"

GITHUB_URL=$1
GITHUB_REPOSITORY_NAME=$2
DOCKER_REPOSITORY=$3

# Clone the GitHub repository
git clone $GITHUB_URL

# Build and tag image
cd $GITHUB_REPOSITORY_NAME

docker build -t $DOCKER_REPOSITORY .

# Push the image to Docker Hub
docker push $DOCKER_REPOSITORY