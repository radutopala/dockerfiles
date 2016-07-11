FROM ubuntu:16.04

RUN PACKAGES="\
        rsync \
        lsyncd \
    " && \
    apt-get update && \
    apt-get install -y $PACKAGES && \
    apt-get autoremove --purge -y && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY ./entrypoint.sh /entrypoint.sh
ADD lsyncd.conf.lua /etc/lsyncd/lsyncd.conf.lua
ADD lsyncd.exclude /etc/lsyncd.exclude
