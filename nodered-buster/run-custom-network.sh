sudo docker run --restart unless-stopped -d -v /var/docker/node-red/data:/data --name nodered-buster --network mynet --ip=192.168.1.210 nodered-buster
