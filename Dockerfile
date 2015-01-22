FROM phusion/baseimage:0.9.16

ENV HOME /root

RUN rm -f /etc/service/sshd/down
RUN /etc/my_init.d/00_regen_ssh_host_keys.sh

CMD ["/sbin/my_init"]

RUN echo `/sbin/ip route|awk '/default/ { print  $3 }'` dockerhost >> /etc/hosts
RUN apt-get update && apt-get install -y python bindfs
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
