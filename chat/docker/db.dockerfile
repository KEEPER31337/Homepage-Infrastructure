FROM mysql/mysql-server:8.0

ADD config/db/mysql.cnf /etc/mysql/conf.d/mysql.cnf

RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

ENV LC_ALL=C.UTF-8
