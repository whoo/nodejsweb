FROM alpine
MAINTAINER Dominique DERRIER <derrierdo@gmail.com>
RUN apk update && apk upgrade
RUN apk add nodejs
RUN mkdir /target ; cd /target ; npm install http-server 
ENTRYPOINT cd /target/node_modules/http-server/bin && ./http-server /home
