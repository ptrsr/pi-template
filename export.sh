#!/bin/sh
PROJECT_DIR="$(cd "$(dirname "$0")" && pwd)/"
docker run -it --rm -v $PROJECT_DIR/dist:/dist ptrsr/pi-ci export -i /dist/distro.qcow2 -o /dist/distro.img
