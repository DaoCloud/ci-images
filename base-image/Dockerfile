FROM ubuntu:14.04
MAINTAINER Haipeng <haipeng.wu@daocloud.io>

ADD scripts /tmp/daocloud/scripts
RUN cd /tmp/daocloud/scripts && chmod +x *.sh && ./all.sh && rm -rf /tmp/daocloud/scripts
