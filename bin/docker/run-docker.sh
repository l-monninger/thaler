#!/bin/bash
source ./.docker/ubuntu-22-10/ubuntu-22-10.env.sh
docker container run -d -it ${CONTAINER_NAME}:${VERSION} /bin/bash