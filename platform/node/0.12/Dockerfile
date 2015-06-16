FROM daocloud/ci-base

RUN git clone git://github.com/creationix/nvm.git /root/.nvm && \
    . /root/.nvm/nvm.sh                                      && \
    export NVM_DIR=/root/.nvm                                && \
    nvm install v0.12.4

ENV PATH /root/.nvm/versions/node/v0.12.4/bin:${PATH}
