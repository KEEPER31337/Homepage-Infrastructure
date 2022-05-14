# Chat Server
## 설정
### .env
- chat .env
```
API_URL=
DB_HOST=
DB_USER=
DB_PASSWORD=
```
- docker .env
```
CHAT_DATABASE=
CHAT_ROOT_PASSWORD=
CHAT_USER=
CHAT_PASSWORD=
CHAT_IMAGE_TAG=
```
## 실행
```bash
# docker image 생성
./build.sh

docker-compose up -d
```