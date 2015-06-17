FROM daocloud/ci-base

RUN sudo add-apt-repository --yes ppa:fkrull/deadsnakes
RUN sudo apt-get update && sudo apt-get install -y python3.3 python3.3-dev python3-pip
RUN sudo ln -s /usr/bin/pip3 /usr/bin/pip
RUN sudo rm -f /usr/bin/python && sudo ln -s python3.3 /usr/bin/python
RUN sudo rm -f /usr/bin/python3 && sudo ln -s python3.3 /usr/bin/python3
RUN sudo rm -f /usr/bin/python3-config && sudo ln -s python3.3-config /usr/bin/python3-config
RUN sudo rm -f /usr/bin/python3m && sudo ln -s python3.3m /usr/bin/python3m
RUN sudo rm -f /usr/bin/python3m-config && sudo ln -s python3.3m-config /usr/bin/python3m-config
RUN sudo pip install nose
RUN sudo pip install -U pytest
