#!/bin/bash

set -ex

sudo apt-get update -y
sudo apt-get -y install git-core subversion mercurial

# Build tools, gcc ...
sudo apt-get -y install build-essential gcc clang
sudo apt-get -y install automake autoconf autogen libtool
sudo apt-get -y install make cmake gdb bison unzip flex
sudo apt-get -y install scons

# Essential libraries
sudo apt-get -y install libcurl3 libcurl3-gnutls libcurl4-openssl-dev
sudo apt-get -y install libffi-dev libffi6
sudo apt-get -y install libgdbm-dev
sudo apt-get -y install libmagickwand-dev imagemagick
sudo apt-get -y install libncurses5 libncurses5-dev  libncurses5-dbg
sudo apt-get -y install libossp-uuid-dev
sudo apt-get -y install libqt4-dev
sudo apt-get -y install libreadline6 libreadline6-dev
sudo apt-get -y install libssl-dev
sudo apt-get -y install libxml2-dev libxslt1-dev libxslt-dev
sudo apt-get -y install libyaml-0-2 libyaml-dev libtool
sudo apt-get -y install libzmq-dev
sudo apt-get -y install zlib1g zlib1g-dev
sudo apt-get -y install software-properties-common

# Service libraries
sudo apt-get -y install libmysqlclient-dev libmysqld-dev
sudo apt-get -y install libmemcache-dev
sudo apt-get -y install libpq-dev
sudo apt-get -y install libsqlite3-dev sqlite3 sqlite3-doc

