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
docker build -t daocloud/ci-python:2.3 platform/python/2.3
docker build -t daocloud/ci-python:2.4 platform/python/2.4
docker build -t daocloud/ci-python:2.5 platform/python/2.5
docker build -t daocloud/ci-python:2.6 platform/python/2.6
docker build -t daocloud/ci-python:2.7 platform/python/2.7
docker build -t daocloud/ci-python:3.1 platform/python/3.1
docker build -t daocloud/ci-python:3.2 platform/python/3.2
docker build -t daocloud/ci-python:3.3 platform/python/3.3
docker build -t daocloud/ci-python:3.4 platform/python/3.4

docker build -t daocloud/ci-ruby:1.8.6 platform/ruby/1.8.6
docker build -t daocloud/ci-ruby:1.8.7 platform/ruby/1.8.7
docker build -t daocloud/ci-ruby:1.9.1 platform/ruby/1.9.1
docker build -t daocloud/ci-ruby:1.9.2 platform/ruby/1.9.2
docker build -t daocloud/ci-ruby:1.9.3 platform/ruby/1.9.3
docker build -t daocloud/ci-ruby:2.0.0 platform/ruby/2.0.0
docker build -t daocloud/ci-ruby:2.1.0 platform/ruby/2.1.0
docker build -t daocloud/ci-ruby:2.1.1 platform/ruby/2.1.1
docker build -t daocloud/ci-ruby:2.1.2 platform/ruby/2.1.2
docker build -t daocloud/ci-ruby:2.1.3 platform/ruby/2.1.3
docker build -t daocloud/ci-ruby:2.1.4 platform/ruby/2.1.4
docker build -t daocloud/ci-ruby:2.1.5 platform/ruby/2.1.5
docker build -t daocloud/ci-ruby:2.1.6 platform/ruby/2.1.6
docker build -t daocloud/ci-ruby:2.2.0 platform/ruby/2.2.0
docker build -t daocloud/ci-ruby:2.2.1 platform/ruby/2.2.1
docker build -t daocloud/ci-ruby:2.2.2 platform/ruby/2.2.2


