#!/bin/bash -e

docker build -t daocloud/base-image base-image
docker build -t daocloud/ci-base ci-base

# services
docker build -t daocloud/ci-mysql:5.5 service/mysql/5.5
docker build -t daocloud/ci-redis:2.6 service/redis/2.6
docker build -t daocloud/ci-redis:2.8 service/redis/2.8
docker build -t daocloud/ci-redis:3.0 service/redis/3.0
docker build -t daocloud/ci-mongodb:2.2 service/mongodb/2.2
docker build -t daocloud/ci-mongodb:2.4 service/mongodb/2.4
docker build -t daocloud/ci-mongodb:2.6 service/mongodb/2.6
docker build -t daocloud/ci-mongodb:3.0 service/mongodb/3.0

# platforms
docker build -t daocloud/ci-python:2.7 platform/python/2.7
docker build -t daocloud/ci-ruby:1.9.3 platform/ruby/1.9.3
