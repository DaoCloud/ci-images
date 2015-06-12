FROM daocloud/ci-base

RUN wget http://golangtc.com/static/go/go1.4.linux-amd64.tar.gz --quiet && \
    sudo tar -C /usr/local -xzf go1.4.linux-amd64.tar.gz                && \
    rm -rf go1.4.linux-amd64.tar.gz

ENV PATH /usr/local/go/bin:${PATH}
