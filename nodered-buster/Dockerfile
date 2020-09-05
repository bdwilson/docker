# I run this on a raspberry pi, if you run on a differnet system,
# change your FROM line accordingly
FROM balenalib/raspberry-pi-debian:latest
#FROM debian:buster-slim
ENV TZ=America/New_York

RUN set -xe \
    && apt-get update -y && apt-get install -y \
        bash \
        libtool pkg-config build-essential autoconf automake \
        ca-certificates \
        curl \
        nodejs \
        npm \
        python3 \
        python3-dev \
		sudo \
		procps \
		net-tools \
		inetutils-ping \ 
		libzmq-dev \
    && ln -sf /usr/bin/python3 /usr/bin/python \
    && npm install -g --unsafe-perm \
        node-red \
        node-red-dashboard \
		node-red-contrib-hubitat \
		node-red-contrib-noop \
		node-red-contrib-pushover \
		node-red-contrib-state-machine \
		node-red-contrib-stoptimer2 \
		node-red-contrib-string \
		node-red-contrib-time-range-switch \
		node-red-contrib-unsafe-function \
		node-red-contrib-arp \
		node-red-contrib-bigtimer \
		node-red-contrib-boolean-logic-ultimate \
		node-red-contrib-castv2 \
		node-red-contrib-stoptimer-varidelay \
		node-red-contrib-throttle \
		node-red-node-rbe \
		node-red-node-tail \ 
		ttb-node-red-counter \
		node-red-node-pushover \
		#node-red-contrib-suncron \
		node-red-contrib-aedes \
		node-red-contrib-cron-plus \ 
		# comment out below if you have your own mqtt broker
		node-red-contrib-mqtt-broker \
		node-red-contrib-weekday \
    #&& apt-get remove -y build-essential \
    #    python3-dev \
	&& apt-get autoremove -y \ 
    && rm -rf /tmp/npm-* \
	&& ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone \
	&& useradd -ms /bin/bash node-red \
	&& echo "node-red:node-red" | chpasswd && adduser node-red sudo

WORKDIR /data
VOLUME /data
USER node-red

EXPOSE 1880

CMD ["node-red", "--userDir", "/data", "--flowFile", "flows.json", "--max-old-space-size=256"]
