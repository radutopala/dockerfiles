FROM php7-fpm:local

RUN apt-get clean && apt-get update && apt-get install -y \
    curl \
    git \
    apt-utils \
    wget \
    libsqlite3-dev \
    libicu-dev \
    libldb-dev \
    libldap2-dev \
    libpng-dev \
    nodejs \
    npm \
    ruby-full \
    rubygems \
    vim \
    nmap

RUN wget https://getcomposer.org/composer.phar -O /usr/local/bin/composer \
    && chmod 755 /usr/local/bin/composer \
    && ln -s /usr/bin/nodejs /usr/bin/node \
    && npm install -g gulp \
    && gem install sass

CMD /usr/sbin/php-fpm7.0 -F -O
