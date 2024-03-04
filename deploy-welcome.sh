#!/bin/bash

docker kill welcome
docker rm -f welcome

docker run --detach \
  --name welcome \
  --env LETSENCRYPT_HOST=yuuk1.tk \
  --env VIRTUAL_HOST=yuuk1.tk \
  --env VIRTUAL_PORT=80 \
  --volume welcome:/usr/share/nginx/html \
  nginx
