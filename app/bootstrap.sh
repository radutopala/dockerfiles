#!/bin/bash

# set permissions for symfony cache
setfacl -R -m u:"www-data":rwX -m u:`whoami`:rwX /dev/shm
setfacl -dR -m u:"www-data":rwX -m u:`whoami`:rwX /dev/shm

# start php-fpm
/usr/sbin/php-fpm7.0 -F -O
