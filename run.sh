#!/bin/sh

IMAGE_NAME="jason-s-yu/malmo-proxy:latest"
DOCKERFILE_PATH="./Dockerfile"
CONTAINER_NAME="malmo-proxy"

# Parse arguments
BUILD=false
while [ "$#" -gt 0 ]; do
  case "$1" in
    --build) BUILD=true; shift ;;
    *) FLAGS="$FLAGS $1"; shift ;;
  esac
done

# Build the image if --build flag is set
if [ "$BUILD" = true ]; then
  docker build -t $IMAGE_NAME -f $DOCKERFILE_PATH .
fi

# Run the container
# Check if the container is already running
if [ "$(docker ps -q -f name=$CONTAINER_NAME)" ]; then
  echo "Stopping and removing the existing container..."
  docker stop $CONTAINER_NAME
  docker rm $CONTAINER_NAME
fi

# Build the image if --build flag is set
if [ "$BUILD" = true ]; then
  docker build -t $IMAGE_NAME -f $DOCKERFILE_PATH .
fi

# Run the container
docker run -d --name $CONTAINER_NAME -p 80:80 $FLAGS $IMAGE_NAME
