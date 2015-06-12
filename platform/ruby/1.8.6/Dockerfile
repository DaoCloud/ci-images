FROM daocloud/ci-base

RUN git clone git://github.com/sstephenson/rbenv.git /root/.rbenv                         && \
    git clone git://github.com/sstephenson/ruby-build.git /root/.rbenv/plugins/ruby-build

RUN export PATH=$PATH:/root/.rbenv/bin                                                && \
    export RBENV_VERSION=1.8.6-p420                                                   && \
    eval "$(rbenv init -)"                                                            && \
    CC=gcc rbenv install 1.8.6-p420                                                   && \
    rbenv rehash                                                                      && \
    rbenv global 1.8.6-p420                                                           && \
    rbenv rehash                                                                      && \
    gem install bundler                                                               && \
    rbenv rehash

ENV PATH /root/.rbenv/shims:${PATH}:/root/.rbenv/bin
ENV RBENV_VERSION 1.8.6-p420
ENV RBENV_SHELL bash
