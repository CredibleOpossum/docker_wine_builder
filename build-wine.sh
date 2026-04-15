#!/usr/bin/env bash

set -e

docker build . -f ./docker/Dockerfile -t wine-builder

container_id=$(docker run -v $(pwd)/wine:/app/wine/:z --user=$(id -u):$(id -g) -it --detach wine-builder) && \

docker logs -f $container_id && \
docker cp $container_id:/app/wine_build/wine_master . && \
docker rm $container_id
