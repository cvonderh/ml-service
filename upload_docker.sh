#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=cvonderh/udac-devops

# Step 2: 
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
cat ./docs/pw.txt | docker login --username cvonderh --password-stdin

docker tag 95a8ffc01c82 cvonderh/udac-devops:latest

# Step 3:
# Push image to a docker repository
docker push cvonderh/udac-devops
