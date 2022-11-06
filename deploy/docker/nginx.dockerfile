FROM nginx:1.21.6

RUN apt-get update && apt-get install -y \
	certbot \
	python3-certbot-nginx
