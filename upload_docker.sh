#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=fikrihelmi17/devops-capstone

# Step 2:  
# Authenticate
echo $PASSWORD_DOCKER_HUB | docker login -u fikrihelmi17 --password-stdin

# Step 3:
echo "Docker ID and Image: $dockerpath"
# Push image to a docker repository
docker push $dockerpath
