#!/bin/sh
mkdir -p /data
docker run -d \
  --restart=always \
  --name registry \
  -v /root/create-registry:/cert:ro \
  -v /data:/var/lib/registry \
  -e REGISTRY_HTTP_ADDR=0.0.0.0:443 \
  -e REGISTRY_HTTP_TLS_CERTIFICATE=/certs/tls.crt \
  -e REGISTRY_HTTP_TLS_KEY=/certs/tls.key \
  -p 8443:443 \
  registry:2

