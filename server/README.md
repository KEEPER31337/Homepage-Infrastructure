# KEEPER HOMEPAGE SERVER INFRA
## 설정
### .env
```
APP_TAG=
DB_TAG=build

SECRET=
MAIL_HOST=
MAIL_PORT=
MAIL_USERNAME=
MAIL_PASSWORD=

MYSQL_DATABASE=
MYSQL_ROOT_PASSWORD=
MYSQL_USER=
MYSQL_PASSWORD=
```
APP_TAG는 ```build```, ```layer```, ```run``` 중 하나를 선택
- ```build```: Spring Boot 빌드(```gradle build```)
- ```layer```: Spring Boot layerd jar 빌드
- ```run```: Spring Boot 실행

### DB
DB 초기화를 위한 ```config/init.sql``` 필요

## 실행
```bash
./run.sh
```