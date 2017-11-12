#!/bin/bash
cd /headless/slurm-https
chown munge:munge /var/lib/munge
chown munge:munge /var/log/munge
chown munge:munge /etc/munge
/etc/init.d/munge start
./slurm-https
