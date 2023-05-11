#!/bin/sh

docker exec -it db mysqldump -u MYSQL_USERNAME -pMYSQL_PASSWORD keeper > keeper_dump_$(date +%Y%m%d).sql
