#!/bin/sh

CURRENT_DATE=$(date +%Y%m%d)
PREVIOUS_WEEK_DATE=$(date -d "7 days ago" +%Y%m%d)
BACKUP_FILENAME="${CURRENT_DATE}_dump.sql"
PREVIOUS_WEEK_BACKUP_FILENAME="${PREVIOUS_WEEK_DATE}_dump.sql"

docker exec db-r2 sh -c 'mysqldump -u root -p"$MYSQL_ROOT_PASSWORD" keeper' > ~/db-r2_backup/${BACKUP_FILENAME}

if [ $? -eq 0 ]; then
  echo "Database backup completed: ${BACKUP_FILENAME}"
  if [ -e "${PREVIOUS_BACKUP_FILENAME}" ]; then
    rm "${PREVIOUS_BACKUP_FILENAME}"
    echo "Previous day's backup file deleted: ${PREVIOUS_BACKUP_FILENAME}"
  fi
else
  echo "Database backup failed"
fi

#이 스크립트를 리눅스에다가 매일 05시마다 실행하도록 스케쥴링
# crontab -e
