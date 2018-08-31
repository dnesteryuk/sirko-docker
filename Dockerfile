FROM debian:stretch-slim
MAINTAINER Dmitriy Nesteryuk "dmitriy.nesteryuk@gmail.com"

ENV LANG=C.UTF-8

RUN apt-get update && \
    apt-get install -y libssl-dev && \
    apt-get upgrade && \
    apt-get autoremove

RUN mkdir /usr/local/sirko/

ADD sirko.tar.gz /usr/local/sirko/

# Clean up APT
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 4000

WORKDIR /usr/local/sirko/

ENTRYPOINT ["bin/sirko"]
CMD ["foreground"]
