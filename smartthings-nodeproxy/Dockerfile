FROM node:dubnium-buster-slim
ENV TZ=America/New_York

WORKDIR /data
RUN apt-get -y update && apt-get -y install git && \
	git clone https://github.com/redloro/smartthings && \
	apt-get clean && apt-get autoclean && \
	rm -rf /var/lib/apt/lists/*

WORKDIR /data/smartthings/smartthings-nodeproxy
RUN npm install -g
RUN mkdir /data/smartthings/smartthings-nodeproxy/plugins
COPY config.json /data/smartthings/smartthings-nodeproxy
# there should only be one file in your plugins dir or bad things will happen
COPY plugins/*.js /data/smartthings/smartthings-nodeproxy/plugins
 
EXPOSE 8080

CMD ["npm", "run", "start"]
