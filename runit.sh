#!/bin/bash
docker run -ti --rm -v /etc/munge/munge.key:/etc/munge/munge.key -v /etc/passwd:/etc/passwd -v /etc/slurm/slurm.conf:/etc/slurm/slurm.conf -v /data/mknox/slurm-https/cert:/headless/slurm-https/cert -v /etc/hosts:/etc/hosts -p 8443:8443 d5a0e5f39596
