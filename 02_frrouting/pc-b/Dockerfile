FROM ubuntu:22.04

RUN apt update
RUN apt install -y vim iputils-ping iproute2 net-tools traceroute
RUN echo "export PS1='\u@\h:\w\$ '" >> /root/.bashrc