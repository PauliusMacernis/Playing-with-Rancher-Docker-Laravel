#!/usr/bin/env bash

tag=${1:-latest}

echo "Enter your Gitlab Credentials..."
docker login registry.gitlab.com

docker build -f .docker/Dockerfile -t \
    registry.gitlab.com/sugalvojau/playing-with-rancher-docker-laravel:$tag .

docker push \
    registry.gitlab.com/sugalvojau/playing-with-rancher-docker-laravel:$tag

echo "Build $tag complete"