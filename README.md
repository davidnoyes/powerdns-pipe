powerdns-pipe
================

#THIS IS CURRENTLY A WORK IN PROGRESS

Docker container with the latest Debian Jessie packages of PowerDNS 3.4 with the Pipe backend

Usage:

docker run -p 8400:8400 -p 8500:8500 -h consul --name consul -d --restart=always progrium/consul -server -bootstrap

docker run -d --name pdns-consul -p 53:53/udp -p 53:53/tcp -p 8053:80 -v /your/data/directory:/data --link consul:consul -it powerdns-consul:latest
