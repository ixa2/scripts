#!/bin/bash

docker run --detach \
  --name nginx-proxy-acme \
  --volumes-from nginx-proxy \
  --volume /var/run/docker.sock:/var/run/docker.sock:ro \
  --volume acme:/etc/acme.sh \
  --env "DEFAULT_EMAIL=nicevegan@proton.me" \
  nginxproxy/acme-companion
