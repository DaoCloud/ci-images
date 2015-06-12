FROM daocloud/ci-base

RUN sudo add-apt-repository --yes ppa:fkrull/deadsnakes
RUN sudo apt-get update && sudo apt-get install -y python2.6 python2.6-dev python-pip
RUN sudo pip install nose
RUN sudo pip install -U pytest
