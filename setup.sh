#!/bin/bash
DM_V=${DOCKER_MACHINE_VERSION-0.7.0}
DC_V=${DOCKER_COMPOSE_VERSION-1.8.0}
echo "Installing docker machine"
curl -L https://github.com/docker/machine/releases/download/v${DM_V}/docker-machine-`uname -s`-`uname -m` > /usr/bin/docker-machine && \
chmod +x /usr/bin/docker-machine
echo "Installing docker compose"
curl -L https://github.com/docker/compose/releases/download/${DC_V}/docker-compose-`uname -s`-`uname -m` > /usr/bin/docker-compose && \
chmod +x /usr/bin/docker-compose
