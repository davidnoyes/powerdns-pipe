powerdns-pipe
================

#THIS IS CURRENTLY A WORK IN PROGRESS

Docker container with the latest Debian Jessie packages of PowerDNS 3.4 with the Pipe backend

Usage:

docker run -d --name pdns -p 53:53/udp -p 53:53/tcp -p 80:8081 -e "WEBPASSWD=password" raspberrypython/powerdns-pipe:latest
