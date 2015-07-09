#!/bin/bash -e

docker build -t daocloud/base-image base-image
docker build -t daocloud/ci-base ci-base
