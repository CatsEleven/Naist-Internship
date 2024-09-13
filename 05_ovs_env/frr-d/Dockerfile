FROM quay.io/frrouting/frr:10.1.0

COPY frr.conf /etc/frr/frr.conf
RUN apk update && apk add vim iputils iproute2 net-tools traceroute tcpdump
RUN echo "service integrated-vtysh-config" > /etc/frr/vtysh.conf
RUN echo "export PS1='\u@\h:\w\$ '" >> /root/.bashrc
RUN mkdir /etc/iproute2
RUN echo "1 local1" > /etc/iproute2/rt_tables
RUN echo "2 local2" >> /etc/iproute2/rt_tables
# RUN echo "ip -6 route add 2001:db8:1:400::/64 encap seg6local action End dev eth2" >> /root/.bashrc

# RUN echo "ip -6 route add 2001:db8:1:400:: encap seg6local action End.DX6 nh6 2001:db8:1:1::10 dev eth3 table 1" >> /root/.bashrc
# RUN echo "ip -6 route add 2001:db8:1:400:: encap seg6local action End.DX6 nh6 2001:db8:1:2::10 dev eth4 table 2" >> /root/.bashrc
# RUN echo "ip -6 rule add from 2001:db8:1:50::20 table 1" >> /root/.bashrc
# RUN echo "ip -6 rule add from 2001:db8:1:70::20 table 2" >> /root/.bashrc

# isisdを有効化する
RUN echo "isisd=yes" >> /etc/frr/daemons
