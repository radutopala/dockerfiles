FROM debian:jessie

RUN apt-get update && apt-get -y install \
      wget \
      curl \
      apt-utils \
      ssmtp \
      xz-utils \
      libxrender-dev \
      && wget -O - http://www.dotdeb.org/dotdeb.gpg | apt-key add - \
      && echo "deb http://packages.dotdeb.org jessie all" > /etc/apt/sources.list.d/dotdeb.list \
      && echo "\ndeb-src http://packages.dotdeb.org jessie all" >> /etc/apt/sources.list.d/dotdeb.list

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
        php7.0-imagick \
        php7.0-redis \
        php7.0-apcu \
        php-mbstring \
        php7.0-soap \
        php7.0-curl \
        php-pear \
    && apt-get autoclean \
    && pecl channel-update pecl.php.net \
    && pecl install apcu \
    && phpenmod apcu

ADD php.ini /usr/local/etc/php/php.ini
ADD php.ini /etc/php/7.0/fpm/php.ini
ADD php-fpm.conf /etc/php/7.0/fpm/php-fpm.conf

EXPOSE 9000
