FROM mediawiki:1.38

RUN apt-get update && \
    apt-get install vim certbot python3-certbot-apache -y

COPY docker/data/wiki/index.php /var/www/html/index.php
COPY docker/data/wiki/skins/Liberty /var/www/html/skins/Liberty
COPY docker/data/wiki/LocalSettings.php /var/www/html/LocalSettings.php
COPY docker/data/wiki/keeper_logo_key_square.png /var/www/html/resources/assets/keeper_logo_key_square.png
COPY docker/data/wiki/images /var/www/html/images

WORKDIR /var/www/html
RUN mkdir w && \
    mv * w 2> /dev/null && \
    mv w/index.php .
