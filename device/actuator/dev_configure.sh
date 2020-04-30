#!/usr/bin/env bash

CI_REGISTRY="gitlab.labs.g2-inc.net:4567"
IMAGE_NAME="${CI_REGISTRY}/screamingbunny/device/actuator"
export BASE_IMAGE_NAME="${IMAGE_NAME}:base"

docker build -f ./Base/Dockerfile -t "${IMAGE_NAME}:base" Base
python3 configure.py
sh ./build.sh $IMAGE_NAME