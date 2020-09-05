docker run -d -u $(id -u ${USER}):$(id -g ${USER}) --restart unless-stopped -p 22010:22010 -p 22000:22000 -p 22001:22001 --name hubconnect -t hubconnect

