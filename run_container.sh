#!/bin/bash
# This script runs the Docker container for the Node.js web app

# Define the container image and mount point
IMAGE="nodejs-webapp"  # Your image name
HOST_DIR="/home/hussein/nodejsWebApplication"  # Path to your project directory on the host
CONTAINER_DIR="/usr/src/app"  # Path inside the container where the project will be mounted

# Run the container with the volume mount
docker run -d \
  -p 3001:3001 \
  -v "$HOST_DIR:$CONTAINER_DIR" \
  --name nodejs-webapp-container \
  "$IMAGE"

