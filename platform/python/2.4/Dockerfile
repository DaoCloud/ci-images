FROM daocloud/ci-base

RUN sudo add-apt-repository --yes ppa:fkrull/deadsnakes
RUN sudo apt-get update && sudo apt-get install -y python2.4 python2.4-dev python-pip
RUN sudo pip install nose
RUN sudo pip install -U pytest
