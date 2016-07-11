FROM eboraas/apache-php

RUN apt-get update && apt-get install -y \
    php5-intl php5-mysql php5-gd php5-json php5-ldap php5-imagick php5-apcu php5-redis php5-cli

RUN rm /etc/apache2/sites-enabled/*
COPY app.conf /etc/apache2/sites-enabled
COPY php.ini /usr/local/etc/php/conf.d


CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
