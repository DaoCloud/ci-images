FROM daocloud/ci-base
MAINTAINER Haipeng Wu <haipeng.wu@daocloud.io>

ENV INFLUXDB_VERSION 0.7.3
RUN curl -s -o /tmp/influxdb_latest_amd64.deb https://s3.amazonaws.com/influxdb/influxdb_${INFLUXDB_VERSION}_amd64.deb && \
    dpkg -i /tmp/influxdb_latest_amd64.deb                                                                             && \
    rm /tmp/influxdb_latest_amd64.deb

EXPOSE 8086

CMD ["/opt/influxdb/influxd"]

