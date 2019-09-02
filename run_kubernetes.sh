#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=cvonderh/udac-devops
# Step 2
# Run the Docker Hub container with kubernetes
# kubectl run --image=index.docker.io/cvonderh/udac-devops devops-app --port=8000
# kubectl run --image=nginx devops-app --port=8000
# kubectl create deployment devops-app --image=index.docker.io/cvonderh/udac-devops --port=8000
kubectl run --image=nginx devops-app --port=8000
#kubectl run --image=$dockerpath devops --port=80 --env="DOMAIN=cluster"
# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
# kubectl expose deployment devops-app --port=8080 --name=prediction-http
