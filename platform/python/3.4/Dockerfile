FROM daocloud/ci-base

RUN sudo add-apt-repository --yes ppa:fkrull/deadsnakes
RUN sudo apt-get update && sudo apt-get install -y python3.4 python3.4-dev python3-pip
RUN sudo ln -s /usr/bin/pip3 /usr/bin/pip
RUN sudo rm -f /usr/bin/python && sudo ln -s python3.4 /usr/bin/python
RUN sudo rm -f /usr/bin/python3 && sudo ln -s python3.4 /usr/bin/python3
RUN sudo rm -f /usr/bin/python3-config && sudo ln -s python3.4-config /usr/bin/python3-config
RUN sudo rm -f /usr/bin/python3m && sudo ln -s python3.4m /usr/bin/python3m
RUN sudo rm -f /usr/bin/python3m-config && sudo ln -s python3.4m-config /usr/bin/python3m-config
RUN sudo pip install nose
RUN sudo pip install -U pytest
