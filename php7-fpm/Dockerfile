FROM ubuntu:16.04

RUN apt-get update && apt-get -y install software-properties-common \
    && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 4F4EA0AAE5267A6C \
    && add-apt-repository ppa:ondrej/php -y \
    && apt-get update \
    && apt-get upgrade -yqq

RUN apt-get -y install \
      wget \
      curl \
      apt-utils \
      ssmtp \
      xz-utils \
      libxrender-dev

RUN apt-get install -y \
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
        php7.0-imagick \
        php7.0-redis \
        php7.0-apcu \
        php-mbstring \
        php7.0-soap \
        php7.0-curl \
        php7.0-dev \
        php-pear \
    && apt-get autoclean

ADD php.ini /usr/local/etc/php/php.ini
ADD php.ini /etc/php/7.0/fpm/php.ini
ADD php-fpm.conf /etc/php/7.0/fpm/php-fpm.conf

EXPOSE 9000
