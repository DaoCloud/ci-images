#!/bin/bash -ex

## cc
for version in 4.4 4.6 4.7 4.8 4.9 5
do
  docker run daocloud/ci-gcc:${version} which gcc
  docker run daocloud/ci-gcc:${version} gcc --version | grep ${version}
done

## python
for version in 2.6 2.7 3.1 3.2 3.3 3.4
do
  docker run daocloud/ci-python:${version} which gcc
  docker run daocloud/ci-python:${version} which pip
  docker run daocloud/ci-python:${version} python --version | grep ${version}
done

## ruby
for version in 1.8.7 1.9.3 2.0.0 2.1.2 2.1.4 2.1.6 2.2.0 2.2.2
do
  docker run daocloud/ci-ruby:${version} which ruby
  docker run daocloud/ci-ruby:${version} which gem
  docker run daocloud/ci-ruby:${version} ruby --version | grep ${version}
done

## go
for version in 1.0 1.1 1.2 1.3 1.4
do
  docker run daocloud/ci-golang:${version} which go
  docker run daocloud/ci-golang:${version} go version | grep ${version}
done

## java
for version in openjdk6 openjdk7 oraclejdk6 oraclejdk7 oraclejdk8 oraclejdk9
do
  docker run daocloud/ci-java:${version} which java
done

## node
for version in 0.6 0.8 0.10 0.12
do
  docker run daocloud/ci-node:${version} which node
  docker run daocloud/ci-node:${version} which npm
  docker run daocloud/ci-node:${version} node --version | grep ${version}
done

echo Done.
