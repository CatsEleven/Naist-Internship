FROM ubuntu:22.04

RUN apt update
RUN apt install -y vim iputils-ping iproute2 net-tools traceroute tcpdump curl
RUN echo "export PS1='\u@\h:\w\$ '" >> /root/.bashrc

RUN echo "route -6 add default gw 2001:db8:1:20::10" >> /root/.bashrc
