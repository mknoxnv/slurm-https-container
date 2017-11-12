#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install dependancies"
apt-get update
apt-get install -y wget munge libmysqlclient20 libnuma1 git golang
