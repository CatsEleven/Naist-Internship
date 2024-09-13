FROM nginx:latest   

RUN apt update
RUN apt install -y vim iputils-ping iproute2 net-tools traceroute tcpdump
RUN echo "export PS1='\u@\h:\w\$ '" >> /root/.bashrc

RUN echo "route -6 add default gw 2001:db8:1:1::20" >> /root/.bashrc

COPY index.html /usr/share/nginx/html
