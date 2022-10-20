FROM mysql/mysql-server:8.0

COPY data/mysql.cnf /etc/mysql/conf.d/mysql.cnf
COPY data/init.sql /docker-entrypoint-initdb.d/init.sql

RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

ENV LC_ALL=C.UTF-8
