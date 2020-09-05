FROM node:dubnium-buster-slim
ENV TZ=America/New_York

COPY . /data
WORKDIR /data
RUN npm install -g

EXPOSE 22010
EXPOSE 22000
EXPOSE 22001

CMD ["node", "proxy.js"]
