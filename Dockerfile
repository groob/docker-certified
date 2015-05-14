FROM ubuntu:latest

COPY ./certified /certified
WORKDIR /certified
RUN rm -f .git
RUN apt-get update && \
    apt-get install -y make ruby-ronn git && \
    make install && \
    apt-get -y autoremove --purge && \
    apt-get -y clean && \
    apt-get -y autoclean


COPY entrypoint.sh /entrypoint.sh
VOLUME /certified/etc
ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]
