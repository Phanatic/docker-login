#!/bin/sh

mkdir -p $HOME/.docker
echo $HOME
DOCKER_HOST="${DOCKER_HOST:=https://index.docker.io/v1}"
printf '{"auths":{"%s":{"auth":"%s"}}}\n' "$DOCKER_HOST" "$DOCKER_AUTH" >> $HOME/.docker/config.json
cat $HOME/.docker/config.json
