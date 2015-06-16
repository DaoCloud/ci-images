FROM daocloud/ci-base

RUN git clone git://github.com/creationix/nvm.git /root/.nvm && \
    source /root/.nvm/nvm.sh
    nvm install v0.8.28

ENV PATH /root/.nvm/v0.8.28/bin:${PATH}
