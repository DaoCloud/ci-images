FROM daocloud/ci-base

ENV JAVA_HOME /usr/lib/jvm/java-6-oracle

RUN sudo add-apt-repository --yes ppa:webupd8team/java                                                                 && \
    sudo apt-get -qq update                                                                                            && \
    echo oracle-java6-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections && \
    sudo apt-get -y install oracle-java6-installer                                                                     && \
    sudo apt-get -y install oracle-java6-set-default
