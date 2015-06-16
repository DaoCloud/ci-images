FROM daocloud/ci-base

RUN git clone git://github.com/creationix/nvm.git /root/.nvm && \
    . /root/.nvm/nvm.sh                                      && \
    nvm install v0.10.38

ENV PATH /root/.nvm/v0.10.38/bin:${PATH}
