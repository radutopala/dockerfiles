FROM php:5.6-apache

RUN apt-get update && apt-get install -y \
    php5-intl

RUN rm /etc/apache2/sites-available/*
ADD app.conf /etc/apache2/sites-enabled
ADD php.ini /usr/local/etc/php/conf.d

# VOLUME /var/www/html

CMD ["apache2-foreground"]
