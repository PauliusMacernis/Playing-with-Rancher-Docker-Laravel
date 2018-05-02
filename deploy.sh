#!/usr/bin/env bash

ACCESS_KEY=$1
SECRET_KEY=$2
RANCHER_URL=$3
ENVIRONMENT=$4

rancher-compose \
    -f docker-compose.$ENVIRONMENT.yml \
    -r rancher-compose.$ENVIRONMENT.yml \
    --url=$RANCHER_URL \
    --access-key=$ACCESS_KEY \
    --secret-key=$SECRET_KEY \
    --project-name=rancher-laravel-demo \
    up --upgrade --pull --confirm-upgrade -d