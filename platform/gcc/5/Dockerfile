FROM daocloud/ci-base

RUN sudo add-apt-repository --yes ppa:ubuntu-toolchain-r/test  && \
    sudo apt-get -qq update                                    && \
    sudo apt-get --assume-yes install gcc-5                    && \
    sudo apt-get --assume-yes install g++-5                    && \
    sudo rm -f /usr/bin/gcc                                    && \
    sudo rm -f /usr/bin/gcc-ar                                 && \
    sudo rm -f /usr/bin/gcc-nm                                 && \
    sudo rm -f /usr/bin/gcc-ranlib                             && \
    sudo rm -f /usr/bin/g++                                    && \
    sudo ln -s gcc-5 /usr/bin/gcc                              && \
    sudo ln -s gcc-ar-5 /usr/bin/gcc-ar                        && \
    sudo ln -s gcc-nm-5 /usr/bin/gcc-nm                        && \
    sudo ln -s gcc-ranlib-5 /usr/bin/gcc-ranlib                && \
    sudo ln -s g++-5 /usr/bin/g++
