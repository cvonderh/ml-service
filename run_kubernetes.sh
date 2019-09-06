#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=cvonderh/udac-devops
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run --image=cvonderh/udac-devops:devops devops-app --port=80
# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
# Working version with the 
kubectl expose deployment devops-app --name=devopsclusterip --port=8000 --target-port=80 --type=NodePort