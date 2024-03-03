#!/bin/bash

docker run --detach \
  --name nginx-proxy \
  --publish 80:80 \
  --publish 443:443 \
  --volume certs:/etc/nginx/certs \
  --volume vhost:/etc/nginx/vhost.d \
  --volume html:/usr/share/nginx/html \
  --volume /var/run/docker.sock:/tmp/docker.sock:ro \
  --volume $(pwd)/conf/nginx-upload-size.conf:/etc/nginx/conf.d/upload.conf:ro \
  nginxproxy/nginx-proxy
