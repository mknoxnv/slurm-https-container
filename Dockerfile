FROM ubuntu:16.04

MAINTAINER Michael Knox "mknox@nvidia.com"

ENV HOMELESS /headless
ENV STARTUPDIR /dockerstartup
WORKDIR $HOMELESS


### Add all install scripts for further steps
ENV INST_SCRIPTS $HOMELESS/install
COPY ./src/slurm-https/slurm.pc /
COPY ./src/slurm-https/startup.sh /
ADD  ./src/ubuntu/install $INST_SCRIPTS/
ADD ./src/slurm/install $INST_SCRIPTS/
ADD ./src/slurm-https/install $INST_SCRIPTS/

RUN find $INST_SCRIPTS -name '*.sh' -exec chmod a+x {} +

### Install dependancies
RUN $INST_SCRIPTS/ubuntu-dep.sh
RUN $INST_SCRIPTS/slurm.sh
RUN $INST_SCRIPTS/slurm-https.sh

CMD /startup.sh

