FROM daocloud/ci-base

RUN sudo add-apt-repository --yes ppa:fkrull/deadsnakes
RUN sudo apt-get update && sudo apt-get install -y python2.5 python2.5-dev python-pip
RUN sudo rm -f /usr/bin/python && sudo ln -s python2.5 /usr/bin/python
RUN sudo rm -f /usr/bin/python2 && sudo ln -s python2.5 /usr/bin/python2
RUN sudo pip install nose
RUN sudo pip install -U pytest
