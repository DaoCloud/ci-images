#!/bin/bash

docker build -t daocloud/base-image base-image
docker build -t daocloud/ci-base ci-base

# services
docker build -t daocloud/ci-mysql:5.5 daocloud/ci-mysql/5.5
docker build -t daocloud/ci-redis:2.8 daocloud/ci-redis/2.8
docker build -t daocloud/ci-redis:2.6 daocloud/ci-redis/2.6
docker build -t daocloud/ci-redis:3.0 daocloud/ci-redis/3.0
docker build -t daocloud/ci-mongodb:2.2 daocloud/ci-mongodb/2.2
docker build -t daocloud/ci-mongodb:2.4 daocloud/ci-mongodb/2.4
docker build -t daocloud/ci-mongodb:2.6 daocloud/ci-mongodb/2.6
docker build -t daocloud/ci-mongodb:3.0 daocloud/ci-mongodb/3.0
