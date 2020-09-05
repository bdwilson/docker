docker run \
--net=host \
--name=homebridge \
-e PUID=1000 -e PGID=1000 \
-e TZ=America/New_York \
-e HOMEBRIDGE_CONFIG_UI=1 \
-e HOMEBRIDGE_CONFIG_UI_PORT=8085 \
-v /var/docker/homebridge/config:/homebridge \
-p 20010:20010 \
oznu/homebridge


docker exec homebridge npm install homebridge-hubitat-hubconnect
