FROM daocloud/ci-base

RUN git clone git://github.com/creationix/nvm.git /root/.nvm && \
    . /root/.nvm/nvm.sh                                      && \
    nvm install v0.12.4

ENV PATH /root/.nvm/v0.12.4/bin:${PATH}
