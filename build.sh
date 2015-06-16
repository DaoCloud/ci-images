#!/bin/bash -e

docker build -t daocloud/base-image base-image
docker build -t daocloud/ci-base ci-base

### services
docker build -t daocloud/ci-mysql:5.5 service/mysql/5.5
docker build -t daocloud/ci-redis:2.6 service/redis/2.6
docker build -t daocloud/ci-redis:2.8 service/redis/2.8
docker build -t daocloud/ci-redis:3.0 service/redis/3.0
docker build -t daocloud/ci-mongodb:2.2 service/mongodb/2.2
docker build -t daocloud/ci-mongodb:2.4 service/mongodb/2.4
docker build -t daocloud/ci-mongodb:2.6 service/mongodb/2.6
docker build -t daocloud/ci-mongodb:3.0 service/mongodb/3.0
docker build -t daocloud/ci-memcached:1.4 service/memcached/1.4

### platforms
## gcc
for version in 4.4 4.6 4.7 4.8 4.9 5
do
  docker build -t daocloud/ci-gcc:${version} platform/gcc/${version}
done

## python
for version in 2.3 2.4 2.5 2.6 2.7 3.1 3.2 3.3 3.4
do
  docker build -t daocloud/ci-python:${version} platform/python/${version}
done

## ruby
for version in 1.8.7 1.9.3 2.0.0 2.1.2 2.1.4 2.1.6 2.2.0 2.2.2
do
  docker build -t daocloud/ci-ruby:${version} platform/ruby/${version}
done

## go
for version in 1.0 1.1 1.2 1.3 1.4
do
  docker build -t daocloud/ci-golang:${version} platform/golang/${version}
done

## java
for version in openjdk6 openjdk7 oraclejdk6 oraclejdk7 oraclejdk8 oraclejdk9
do
  docker build -t daocloud/ci-java:${version} platform/java/${version}
done

## node
for version in 0.6 0.8 0.10 0.12
do
  docker build -t daocloud/ci-node:${version} platform/node/${version}
done
