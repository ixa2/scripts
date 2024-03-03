#!/bin/bash

docker run --detach \
  --name welcome \
  --env LETSENCRYPT_HOST=yuuk1.tk \
  --env VIRTUAL_HOST=yuuk1.tk \
  --env VIRTUAL_PORT=80 \
  nginx
