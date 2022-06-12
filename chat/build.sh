docker build -t keeper-homepage-chat:${CHAT_IMAGE_TAG} -f docker/chat.dockerfile docker
docker build -t keeper-homepage-chat-db:${CHAT_IMAGE_TAG} -f docker/db.dockerfile docker