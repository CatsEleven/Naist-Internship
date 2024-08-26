FROM frrouting/frr

RUN apk update && apk add vim iputils iproute2 net-tools traceroute
RUN echo "service integrated-vtysh-config" > /etc/frr/vtysh.conf