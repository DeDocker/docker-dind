#!/bin/bash

BASEIMAGE="desmart/dind:latest"

docker build . -f Dockerfile -t ${BASEIMAGE}

if [ "$1" = "buildonly" ]; then
  exit 0
fi

docker push ${BASEIMAGE}
