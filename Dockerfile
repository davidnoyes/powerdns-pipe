FROM debian:jessie
MAINTAINER David Noyes <david@raspberrypython.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get -yq upgrade

RUN apt-get install -yq pdns-backend-pipe

RUN apt-get clean && apt-get -yq autoremove && rm -rf /var/lib/apt/lists/*

RUN rm -f /etc/powerdns/pdns.d/pdns.simplebind.conf

ADD ./pdns.pipe-consul.conf /etc/powerdns/pdns.d/pdns.pipe-consul.conf

VOLUME ["/data"]

EXPOSE 53/udp 53/tcp 80

CMD /usr/sbin/pdns_server
