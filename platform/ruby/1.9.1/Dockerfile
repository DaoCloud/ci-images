FROM daocloud/ci-base

RUN git clone git://github.com/sstephenson/rbenv.git /root/.rbenv                         && \
    git clone git://github.com/sstephenson/ruby-build.git /root/.rbenv/plugins/ruby-build

RUN export PATH=$PATH:/root/.rbenv/bin                                                && \
    export RBENV_VERSION=1.9.1-p430                                                   && \
    eval "$(rbenv init -)"                                                            && \
    CC=gcc rbenv install 1.9.1-p430                                                   && \
    rbenv rehash                                                                      && \
    rbenv global 1.9.1-p430                                                           && \
    rbenv rehash                                                                      && \
    gem install bundler                                                               && \
    rbenv rehash

ENV PATH /root/.rbenv/shims:${PATH}:/root/.rbenv/bin
ENV RBENV_VERSION 1.9.1-p430
ENV RBENV_SHELL bash
