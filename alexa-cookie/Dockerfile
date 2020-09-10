# https://github.com/gabriele-v/hubitat/tree/master/AlexaCookieNodeJs/AlexaCookieNodeJs
FROM node:dubnium-buster-slim
ENV TZ=America/New_York

ARG USER=""
ARG PASS=""
ARG MAINPORT=81
ARG PROXYPORT=82

WORKDIR /data
RUN apt-get update && \
    apt-get install -y --no-install-recommends git ca-certificates && \
    git clone https://github.com/gabriele-v/hubitat && \
    mv -f hubitat/AlexaCookieNodeJs/AlexaCookieNodeJs/* /data && \
    rm -rf hubitat && \
    apt-get clean && apt-get autoclean && \
    rm -rf /var/lib/apt/lists/*

COPY config.json /data

RUN sed -i "s/MAINPORT/${MAINPORT}/" /data/config.json && \
    sed -i "s/PROXYPORT/${PROXYPORT}/" /data/config.json && \
    sed -i "s/USER/${USER}/" /data/config.json && \
    sed -i "s/PASS/${PASS}/" /data/config.json 

RUN npm install -g

CMD ["node", "AlexaCookie.js"]
