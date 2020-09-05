# https://www.adminsub.net/ipv4-subnet-calculator/192.168.1.208/28
# https://blog.oddbit.com/post/2018-03-12-using-docker-macvlan-networks/
# FYI, my DHCP server does not hand out IP's above 192.168.1.200, you 
# should setup your DHCP server accordingly
# 
# 192.168.1.208/28
# broadcast 192.168.1.223
#First IP 192.168.1.209
# Last Ip: 192.168.1.222  
# hosts: 14 

# you must run network-create.sh once and this upon system boot
# Run this at boot time via docker-network.service
ip link add mynet-shim link eth0 type macvlan mode bridge
ip addr add 192.168.1.223/32 dev mynet-shim
ip link set mynet-shim up
ip route add 192.168.1.208/28 dev mynet-shim

