#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="deanomotuyi/microproj"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy microproj --image=$dockerpath

# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl port-forward microproj 8000:80
