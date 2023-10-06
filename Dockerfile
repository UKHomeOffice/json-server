FROM node:14.21.3-alpine3.17


RUN npm install -g json-server
USER 1000
WORKDIR /data
VOLUME /data

EXPOSE 3005
ADD run.sh /run.sh
ENTRYPOINT ["bash", "/run.sh"]
CMD []
