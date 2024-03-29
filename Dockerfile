FROM node:lts-alpine3.18


RUN npm install -g json-server
USER 1000
WORKDIR /data
VOLUME /data

EXPOSE 3005
ADD run.sh /run.sh
ENTRYPOINT ["sh", "/run.sh"]
CMD []
