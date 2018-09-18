#!/bin/sh

mkdir -p $HOME/.docker
if [ -z "$DOCKER_AUTH" ]; then
    echo "I need the \$DOCKER_AUTH variable to be set for this to work!\n"
    exit 1
fi
DOCKER_HOST="${DOCKER_HOST:=https://index.docker.io/v1/}"
printf '{"auths":{"%s":{"auth":"%s"}}}\n' "$DOCKER_HOST" "$DOCKER_AUTH" >> $HOME/.docker/config.json
