docker compose down

echo "----------del-port開始----------"
PASSWORD='musasi'
echo $PASSWORD | sudo -S ovs-docker del-port pc-a-net eth0 pc-a --ipaddress=2001:db8:1:10::20/64 && \
echo $PASSWORD | sudo -S ovs-docker del-port pc-a-net eth0 frr-a && \
echo $PASSWORD | sudo -S ovs-docker del-port pc-b-net eth0 pc-b --ipaddress=2001:db8:1:20::20/64 && \
echo $PASSWORD | sudo -S ovs-docker del-port pc-b-net eth0 frr-b && \
echo $PASSWORD | sudo -S ovs-docker del-port pc-c-net eth0 pc-c --ipaddress=2001:db8:1:90::20/64 && \
echo $PASSWORD | sudo -S ovs-docker del-port pc-c-net eth0 frr-e && \
echo $PASSWORD | sudo -S ovs-docker del-port router-a-b eth1 frr-a && \
echo $PASSWORD | sudo -S ovs-docker del-port router-a-b eth1 frr-b && \
echo $PASSWORD | sudo -S ovs-docker del-port router-a-d eth2 frr-a && \
echo $PASSWORD | sudo -S ovs-docker del-port router-a-d eth0 frr-d && \
echo $PASSWORD | sudo -S ovs-docker del-port router-b-c eth2 frr-b && \
echo $PASSWORD | sudo -S ovs-docker del-port router-b-c eth0 frr-c && \
echo $PASSWORD | sudo -S ovs-docker del-port router-c-d eth1 frr-c && \
echo $PASSWORD | sudo -S ovs-docker del-port router-c-d eth1 frr-d && \
echo $PASSWORD | sudo -S ovs-docker del-port router-c-e eth2 frr-c && \
echo $PASSWORD | sudo -S ovs-docker del-port router-c-e eth1 frr-e && \
echo $PASSWORD | sudo -S ovs-docker del-port router-d-e eth2 frr-d && \
echo $PASSWORD | sudo -S ovs-docker del-port router-d-e eth2 frr-e && \
# echo $PASSWORD | sudo -S ovs-docker del-port server1-net eth1 server1 --ipaddress=2001:db8:1:1::10/64 && \
# echo $PASSWORD | sudo -S ovs-docker del-port server1-net eth3 frr-d && \
# echo $PASSWORD | sudo -S ovs-docker del-port server2-net eth1 server2 --ipaddress=2001:db8:1:2::10/64 && \
# echo $PASSWORD | sudo -S ovs-docker del-port server2-net eth3 frr-a
# echo $PASSWORD | sudo -S ovs-docker del-port router-d-srext eth3 frr-d && \
# echo $PASSWORD | sudo -S ovs-docker del-port srext-ips eth0 ips --ipaddress=2001:db8:1:2::10/64

echo "----------del-port終了----------"