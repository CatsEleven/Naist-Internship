FROM ubuntu:22.04

RUN apt update && \
    apt install -y vim iputils-ping iproute2 net-tools traceroute git make build-essential gcc-12 \
    autoconf automake binutils cpp gcc linux-headers-$(uname -r) psmisc \
    kmod linux-modules-$(uname -r) sudo tcpdump

RUN mkdir home/project && \
    cd home/project && \
    git clone https://github.com/netgroup/SRv6-net-prog && \
    cd SRv6-net-prog/srext && \
    make && \
    make install

RUN echo "export PS1='\u@\h:\w\$ '" >> /root/.bashrc && \
    echo "depmod -a" >> /root/.bashrc && \
    echo "modprobe srext" >> /root/.bashrc

RUN echo "route -6 add default gw 2001:db8:1:1::20" >> /root/.bashrc

# FROM ubuntu:22.04

# RUN apt update && \
#     apt install -y vim iputils-ping iproute2 net-tools traceroute tcpdump

# RUN echo "export PS1='\u@\h:\w\$ '" >> /root/.bashrc

# RUN echo "route -6 add default gw 2001:db8:1:1::20" >> /root/.bashrc