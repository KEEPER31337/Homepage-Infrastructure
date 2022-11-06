FROM mysql:8.0

ADD docker/data/db/mysql.cnf /etc/mysql/conf.d/mysql.cnf
# ADD docker/data/db/init.sql /docker-entrypoint-initdb.d/init.sql

RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

ENV LC_ALL=C.UTF-8
