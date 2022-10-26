FROM ubuntu:14.04

RUN apt-get update
RUN apt-get upgrade -y

RUN apt-get install -y nodejs

RUN ln -s /usr/bin/nodejs /usr/bin/node

RUN apt-get install -y npm
RUN /usr/bin/npm install ws

EXPOSE 8023

ENTRYPOINT ["/usr/bin/node", "/root/index.js"]
