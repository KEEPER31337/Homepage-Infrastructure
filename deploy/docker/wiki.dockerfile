FROM mediawiki:1.38.1

RUN sed -i 's/Listen 80/Listen 3001/' /etc/apache2/ports.conf
RUN sed -i 's/80/3001/' /etc/apache2/sites-available/000-default.conf

COPY docker/data/wiki/skins/Liberty /var/www/html/skins/Liberty
COPY docker/data/wiki/LocalSettings.php /var/www/html/LocalSettings.php
COPY docker/data/wiki/keeper_logo_key_square.png /var/www/html/resources/assets/keeper_logo_key_square.png

COPY docker/data/wiki/images /var/www/html/images
