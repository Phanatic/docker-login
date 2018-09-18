FROM alpine:latest
LABEL "com.github.actions.icon"="zap"
LABEL "com.github.actions.color"="0000FF"
LABEL "com.github.actions.name"="Docker Registry"
LABEL "com.github.actions.description"="This is a task to log into docker. Set DOCKER_USERNAME, DOCKER_SECRET and optionally DOCKER_HOST"

ENV HOME=/workspace
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
