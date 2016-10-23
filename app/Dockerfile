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
    && gem install sass \
    && composer global require "hirak/prestissimo:^0.3"

# ADD bootstrap.sh /bootstrap.sh
# RUN chown root:root /bootstrap.sh
# RUN chmod 700 /bootstrap.sh
#
# ENV BOOTSTRAP /bootstrap.sh


RUN setfacl -R -m u:"www-data":rwX -m u:`whoami`:rwX /dev/shm
RUN setfacl -dR -m u:"www-data":rwX -m u:`whoami`:rwX /dev/shm

# start php-fpm
CMD /usr/sbin/php-fpm7.0 -F -O

# CMD /bootstrap.sh
