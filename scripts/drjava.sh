#!/bin/bash

exec() {
  shift
  docker run --rm -it \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $(pwd)/drjava/src:/usr/src/app \
    -v $(pwd)/drjava/drjava:/root/.drjava \
    -e DISPLAY=unix$DISPLAY \
    yurifl/algs4 $@
}

run() {
  docker run --rm -it \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $(pwd)/drjava/src:/usr/src/app \
    -v $(pwd)/drjava/drjava:/root/.drjava \
    -e DISPLAY=unix$DISPLAY \
    yurifl/algs4 drjava
}

daemon() {
  stop
  docker run -d \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -v $(pwd)/drjava/src:/usr/src/app \
    -v $(pwd)/drjava/drjava:/root/.drjava \
    -e DISPLAY=unix$DISPLAY \
    --name drjava \
    yurifl/algs4 drjava
}

stop () {
  docker stop drjava
  docker rm drjava
}

case $1 in
  e) exec "$@";;
  r) run;;
  d) daemon;;
  s) stop;;
esac

