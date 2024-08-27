FROM frrouting/frr

COPY frr.conf /etc/frr/frr.conf
RUN apk update && apk add vim iputils iproute2 net-tools traceroute
RUN echo "service integrated-vtysh-config" > /etc/frr/vtysh.conf
RUN echo "export PS1='\u@\h:\w\$ '" >> /root/.bashrc

# isisdを有効化する
RUN echo "isisd=yes" >> /etc/frr/daemons

#txtの内容を、vtyshに流し込む
# COPY config.txt /etc/frr/config.txt
# RUN echo "vtysh < /etc/frr/config.txt" >> /root/.bashrc