FROM daocloud/ci-base
MAINTAINER Haipeng Wu <haipeng.wu@daocloud.io>

ENV INFLUXDB_VERSION 0.9.0
ENV PATH /opt/influxdb:${PATH}

RUN curl -s -o /tmp/influxdb_latest_amd64.deb https://s3.amazonaws.com/influxdb/influxdb_${INFLUXDB_VERSION}_amd64.deb && \
    dpkg -i /tmp/influxdb_latest_amd64.deb                                                                             && \
    rm /tmp/influxdb_latest_amd64.deb

RUN /bin/bash -c "/opt/influxdb/influxd &" && \
    sleep 5                                && \
    echo "CREATE DATABASE test" | influx

EXPOSE 8086

CMD ["/opt/influxdb/influxd"]
