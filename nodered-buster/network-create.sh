# https://www.adminsub.net/ipv4-subnet-calculator/192.168.1.208/28
# https://blog.oddbit.com/post/2018-03-12-using-docker-macvlan-networks/
# FYI, my DHCP server does not hand out IP's above 192.168.1.200, you 
# should setup your DHCP server accordingly
# 
# without this configuration your container will not be able to talk to
# the docket host. 
#
# 192.168.1.208/28
# broadcast 192.168.1.223
# First IP 192.168.1.209
# Last Ip: 192.168.1.222  
# hosts: 14 


# run the below command once
docker network create -d macvlan -o parent=eth0 \
	  --subnet 192.168.1.0/24 \
      --gateway 192.168.1.1 \
	  --ip-range 192.168.1.208/28 \
	  --aux-address 'host=192.168.1.223' \
 	  mynet

