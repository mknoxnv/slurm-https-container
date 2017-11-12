#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install slurm" 
wget http://10.31.228.55/dgx-baseos3/pool/main/s/slurm/slurm_17.02.7-2_amd64.deb
dpkg -i slurm_17.02.7-2_amd64.deb
rm slurm_17.02.7-2_amd64.deb
