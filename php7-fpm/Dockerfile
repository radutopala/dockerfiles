FROM ubuntu:latest

RUN apt-get clean && apt-get update && apt-get install -y \
        libsqlite3-dev \
        libicu-dev \
        libldb-dev \
        libldap2-dev \
        libpng-dev \
        php7.0-fpm \
        php7.0-cli \
        php7.0-mysql \
        php7.0-pdo \
        php7.0-xml \
        php7.0-intl \
        php7.0-bcmath \
        php7.0-gd \
        php7.0-exif \
        php7.0-zip \
        php7.0-opcache \
        php7.0-ldap \
        php7.0-sqlite3 \
        php-imagick \
        php-redis \
        php-apcu \
        php-mbstring \
        php7.0-soap \
        php7.0-curl \
        php-pear \
    && apt-get autoclean \
    && pecl install apcu

ADD php.ini /usr/local/etc/php/php.ini
ADD php.ini /etc/php/7.0/fpm/php.ini
ADD php-fpm.conf /etc/php/7.0/fpm/php-fpm.conf
