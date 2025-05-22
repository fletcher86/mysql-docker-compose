#!/bin/bash

export NETWORK_NAME="local-db-network"
if [ $(docker network ls | grep -c $NETWORK_NAME) -eq 0 ]; then
    echo "****************************************"
    echo "Creating docker network: ${NETWORK_NAME}"
    echo "****************************************"
    docker network create ${NETWORK_NAME}
fi

docker compose -f mysql-docker-compose.yml up -d