#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=fikrihelmi17/udacity-project-ml

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-project-ml --image=fikrihelmi17/udacity-project-ml --port=80 --labels app=udacity-project-ml

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacity-project-ml 8000:80

