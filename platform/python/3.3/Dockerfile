FROM daocloud/ci-base

RUN sudo add-apt-repository --yes ppa:fkrull/deadsnakes
RUN sudo apt-get update && sudo apt-get install -y python3.3 python3.3-dev python3-pip
RUN sudo pip install nose
RUN sudo pip install -U pytest
