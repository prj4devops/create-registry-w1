#!/bin/sh
openssl req -x509 -nodes -newkey rsa:4096 -keyout tls.key -out tls.crt -days 365 \
 -config tls.req -extensions v3_req
mkdir -p /etc/docker/certs.d/192.168.1.10:8443
cp -f tls.crt /etc/docker/certs.d/192.168.1.10:8443
