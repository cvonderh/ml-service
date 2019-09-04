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
# kubectl expose deployment devops-app --port=8000 --name=prediction-http
# kubectl expose deployment/devops-app --type="NodePort" --port 8000 --name=prediction-http
# kubectl expose deployment/devops-app --port 8000 target-port=80 --name=prediction-http
kubectl expose deployment devops-app --type="NodePort" --port 8000 --name=prediction-http