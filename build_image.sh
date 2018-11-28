#!/bin/bash

if ! [ -x "$(command -v docker)" ]; then
  echo 'Error: docker is not installed.' >&2
  exit 1
fi

cd docker_image

docker build --no-cache -t nibalizer/alpine-ibmcloudcli .
docker push nibalizer/alpine-ibmcloudcli
