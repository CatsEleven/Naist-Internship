FROM quay.io/frrouting/frr:10.1.0

COPY frr.conf /etc/frr/frr.conf
RUN apk update && apk add vim iputils iproute2 net-tools traceroute tcpdump
RUN echo "service integrated-vtysh-config" > /etc/frr/vtysh.conf
RUN echo "export PS1='\u@\h:\w\$ '" >> /root/.bashrc
RUN echo "ip -6 route add 2001:db8:1:400::/64 encap seg6local action End dev eth1" >> /root/.bashrc

# isisdを有効化する
RUN echo "isisd=yes" >> /etc/frr/daemons
