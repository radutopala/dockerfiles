FROM php7-fpm:local

RUN apt-get clean && apt-get update && apt-get install -y \
    git \
    nodejs \
    npm \
    ruby-full \
    rubygems \
    lsb-release \
    acl

RUN wget https://getcomposer.org/composer.phar -O /usr/local/bin/composer \
    && chmod 755 /usr/local/bin/composer \
    && ln -s /usr/bin/nodejs /usr/bin/node \
    && npm install -g gulp \
    && gem install sass \
    && composer global require "hirak/prestissimo:^0.3"

# blackfire
RUN version=$(php -r "echo PHP_MAJOR_VERSION.PHP_MINOR_VERSION;") \
    && curl -A "Docker" -o /tmp/blackfire-probe.tar.gz -D - -L -s https://blackfire.io/api/v1/releases/probe/php/linux/amd64/$version \
    && tar zxpf /tmp/blackfire-probe.tar.gz -C /tmp \
    && mv /tmp/blackfire-*.so $(php -r "echo ini_get('extension_dir');")/blackfire.so \
    && printf "extension=blackfire.so\nblackfire.agent_socket=tcp://blackfire:8707\n" > /etc/php/7.0/cli/conf.d/blackfire.ini \
    && printf "extension=blackfire.so\nblackfire.agent_socket=tcp://blackfire:8707\n" > /etc/php/7.0/fpm/conf.d/blackfire.ini

RUN echo "\nalias xdebug-en='phpenmod xdebug && service php7.0-fpm restart'\nalias xdebug-dis='phpdismod xdebug && service php7.0-fpm restart'" > ~/.bashrc
RUN apt-get autoclean

ADD bootstrap.sh /bootstrap.sh
RUN chown root:root /bootstrap.sh
RUN chmod 700 /bootstrap.sh

ENV BOOTSTRAP /bootstrap.sh

CMD /bootstrap.sh
