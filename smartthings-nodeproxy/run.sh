docker run -d -u $(id -u ${USER}):$(id -g ${USER}) --restart unless-stopped -p 8080:8080 --name smartthings-nodeproxy -t smartthings-nodeproxy
