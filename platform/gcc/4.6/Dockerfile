FROM daocloud/ci-base

RUN sudo add-apt-repository --yes ppa:ubuntu-toolchain-r/test  && \
    sudo apt-get -qq update                                    && \
    sudo apt-get --assume-yes install gcc-4.6                  && \
    sudo apt-get --assume-yes install g++-4.6                  && \
    sudo rm -f /usr/bin/gcc                                    && \
    sudo rm -f /usr/bin/gcc-ar                                 && \
    sudo rm -f /usr/bin/gcc-nm                                 && \
    sudo rm -f /usr/bin/gcc-ranlib                             && \
    sudo rm -f /usr/bin/g++                                    && \
    sudo ln -s gcc-4.6 /usr/bin/gcc                            && \
    sudo ln -s g++-4.6 /usr/bin/g++
