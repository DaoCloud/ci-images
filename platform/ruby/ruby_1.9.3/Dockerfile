FROM daocloud/ci-base

RUN git clone git://github.com/sstephenson/rbenv.git ~/.rbenv                         && \
    git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

RUN export PATH=$PATH:~/.rbenv/bin                                                    && \
    export RBENV_VERSION=1.9.3-p484                                                   && \
    eval "$(rbenv init -)"                                                            && \
    CC=gcc rbenv install 1.9.3-p484                                                   && \
    rbenv rehash                                                                      && \
    rbenv global 1.9.3-p484                                                           && \
    rbenv rehash                                                                      && \
    gem install bundler                                                               && \
    rbenv rehash
