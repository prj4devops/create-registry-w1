#!/bin/sh
yum -y install sshpass
mkdir -p /etc/docker/certs.d/192.168.1.10:8443
cp -f tls.crt /etc/docker/certs.d/192.168.1.10:8443
sshpass -pvagrant ssh -o StrictHostKeyChecking=no root@w1-k8s \
mkdir -p /etc/docker/certs.d/192.168.1.10:8443
sshpass -pvagrant ssh -o StrictHostKeyChecking=no root@w2-k8s \
mkdir -p /etc/docker/certs.d/192.168.1.10:8443
sshpass -pvagrant ssh -o StrictHostKeyChecking=no root@w3-k8s \
mkdir -p /etc/docker/certs.d/192.168.1.10:8443
sshpass -pvagrant scp tls.crt w1-k8s:/etc/docker/certs.d/192.168.1.10:8443
sshpass -pvagrant scp tls.crt w2-k8s:/etc/docker/certs.d/192.168.1.10:8443
sshpass -pvagrant scp tls.crt w3-k8s:/etc/docker/certs.d/192.168.1.10:8443
