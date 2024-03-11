#!/bin/bash

if which node; then
  exit
fi

curl -fsSL https://deb.nodesource.com/setup_20.x | bash -
apt-get install -y nodejs
