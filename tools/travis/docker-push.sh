#!/bin/bash
set -eux

IMAGE_PREFIX=${1:-kameshsampath}

if [[ ! -z ${DOCKER_USER} ]] && [[ ! -z ${DOCKER_PASSWORD} ]]; then
  docker login -u "${DOCKER_USER}" -p "${DOCKER_PASSWORD}"
fi

IMG=$(docker images | grep $IMAGE_PREFIX | awk '{n=$1":"$2; print n}')
for img in "${IMG}"; 
do
  docker push "${img}"
done

