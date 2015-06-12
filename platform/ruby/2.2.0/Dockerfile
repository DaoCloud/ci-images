FROM daocloud/ci-base

RUN git clone git://github.com/sstephenson/rbenv.git /root/.rbenv                         && \
    git clone git://github.com/sstephenson/ruby-build.git /root/.rbenv/plugins/ruby-build

RUN export PATH=$PATH:/root/.rbenv/bin                                                && \
    export RBENV_VERSION=2.2.0                                                   && \
    eval "$(rbenv init -)"                                                            && \
    CC=gcc rbenv install 2.2.0                                                   && \
    rbenv rehash                                                                      && \
    rbenv global 2.2.0                                                           && \
    rbenv rehash                                                                      && \
    gem install bundler                                                               && \
    rbenv rehash

ENV PATH /root/.rbenv/shims:${PATH}:/root/.rbenv/bin
ENV RBENV_VERSION 2.2.0
ENV RBENV_SHELL bash
