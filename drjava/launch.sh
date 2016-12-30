#!/bin/bash

docker stop drjava
docker rm drjava
docker run -d \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v $(pwd)/drjava/src:/usr/src/app \
  -v $(pwd)/drjava/drjava:/root/.drjava \
  -e DISPLAY=unix$DISPLAY \
  --name drjava \
  yurifl/algs4 drjava
