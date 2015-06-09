FROM daocloud/ci-base

USER root
RUN dpkg-divert --local --rename --add /sbin/initctl                                      && \
    ln -sf /bin/true /sbin/initctl

RUN apt-get update
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get install -y mysql-server-5.5
RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/my.cnf                && \
    /bin/bash -c "/usr/sbin/mysqld &"                                                                   && \
    sleep 10                                                                                            && \
    mysql -u root -e 'CREATE DATABASE IF NOT EXISTS test default charset utf8 COLLATE utf8_general_ci'  && \
    echo "GRANT ALL ON *.* TO root@'%' IDENTIFIED BY '' WITH GRANT OPTION; FLUSH PRIVILEGES" | mysql

EXPOSE 3306
ENTRYPOINT "/usr/sbin/mysqld"
