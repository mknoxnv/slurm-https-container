# slurm-https-container
Slurm-https docker container
Build docker container
- docker build .

Run container
- mkdirt cert
- docker run -d -v /etc/munge/munge.key:/etc/munge/munge.key -v /etc/passwd:/etc/passwd -v /etc/slurm/slurm.conf:/etc/slurm/slurm.conf -v /data/mknox/slurm-https/cert:/headless/slurm-https/cert -v /etc/hosts:/etc/hosts -p 8443:8443 slurm-https
