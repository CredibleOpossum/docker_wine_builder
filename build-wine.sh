docker build . -t wine-builder -f docker/Dockerfile && \
export container_id=$(docker run -v $(pwd)/wine:/app/wine/:z --user=$(id -u):$(id -g) -it --detach wine-builder) && \
docker logs -f $container_id && \
docker cp $container_id:/app/wine_build/wine-master . && \
docker rm $container_id