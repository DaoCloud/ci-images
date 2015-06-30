FROM daocloud/ci-base

RUN git clone git://github.com/sstephenson/rbenv.git /root/.rbenv                         && \
    git clone git://github.com/sstephenson/ruby-build.git /root/.rbenv/plugins/ruby-build

RUN export PATH=$PATH:/root/.rbenv/bin                                                && \
    export RBENV_VERSION=2.0.0-p645                                                   && \
    eval "$(rbenv init -)"                                                            && \
    CC=gcc rbenv install 2.0.0-p645                                                   && \
    rbenv rehash                                                                      && \
    rbenv global 2.0.0-p645                                                           && \
    rbenv rehash                                                                      && \
    gem install bundler                                                               && \
    rbenv rehash

ENV PATH /root/.rbenv/versions/2.0.0-p645/bin:${PATH}
ENV RBENV_VERSION 2.0.0-p645
ENV RBENV_SHELL bash
