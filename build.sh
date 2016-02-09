#!/bin/sh
set -ex

# docker build -f Dockerfile.builder --tag=build-image .
# docker inspect build-container >/dev/null && docker rm build-container
# docker create --name=build-container build-image cat
# docker cp build-container:/project ./build-artifact
# docker build -f Dockerfile.release --tag=sen .
if docker run sen test -f /id_rsa
then
  printf "Key is in final image!\n"
  exit 2
else
  printf "Key is not in final image\n"
fi
