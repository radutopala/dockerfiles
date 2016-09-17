FROM php7-fpm:local

RUN apt-get clean && apt-get update && apt-get install -y \
    git \
    nodejs \
    npm \
    ruby-full \
    rubygems

RUN wget https://getcomposer.org/composer.phar -O /usr/local/bin/composer \
    && chmod 755 /usr/local/bin/composer \
    && ln -s /usr/bin/nodejs /usr/bin/node \
    && npm install -g gulp \
    && gem install sass

ADD bootstrap.sh /bootstrap.sh
RUN chown root:root /bootstrap.sh
RUN chmod 700 /bootstrap.sh

ENV BOOTSTRAP /bootstrap.sh

CMD /bootstrap.sh
