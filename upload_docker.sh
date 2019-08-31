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
docker tag b66a992991e6 cvonderh/udac-devops:devops

# Step 3:
# Push image to a docker repository
docker push cvonderh/udac-devops