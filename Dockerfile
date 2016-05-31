FROM alpine
MAINTAINER Dominique DERRIER <derrierdo@gmail.com>
RUN apk update && apk upgrade && apk add nodejs && rm -rf /var/cache/apk/*
RUN mkdir /target ; cd /target ; npm install http-server 
USER guest
ENTRYPOINT cd /target/node_modules/http-server/bin && ./http-server /home -p ${port:-8080}
