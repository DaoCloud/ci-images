FROM daocloud/ci-base

RUN sudo add-apt-repository --yes ppa:fkrull/deadsnakes
RUN sudo apt-get update && sudo apt-get install -y python3.4 python3.4-dev python3-pip
RUN sudo ln -s /usr/bin/pip3 /usr/bin/pip
RUN sudo pip install nose
RUN sudo pip install -U pytest
