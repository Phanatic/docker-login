#!/bin/sh

mkdir -p $HOME/.docker
echo $HOME
DOCKER_HOST="${DOCKER_HOST:=https://index.docker.io/v1}"
printf '{"ServerURL":"%s","Username":"%s","Secret":"%s"}\n' "$DOCKER_HOST" "$DOCKER_USERNAME" "$DOCKER_SECRET" >> $HOME/.docker/config.json
cat $HOME/.docker/config.json
