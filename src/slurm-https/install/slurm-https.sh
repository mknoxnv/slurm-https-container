#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install slurm-https"
git clone https://github.com/angt/slurm-https.git
cd slurm-https
export PKG_CONFIG_PATH=/
go build
ln -s cert/ca.crt ca.crt
ln -s cert/ca.key ca.key
ln -s cert/ca.srl ca.srl
ln -s cert/client.crt client.crt
ln -s cert/client.csr client.csr
ln -s cert/client.key client.key
ln -s cert/openssl.conf openssl.conf
ln -s cert/server.crt server.crt
ln -s cert/server.csr server.csr
ln -s cert/server.key server.key
