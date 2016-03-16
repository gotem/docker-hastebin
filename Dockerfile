FROM node
MAINTAINER [Alejandro Baez](https://twitter.com/a_baez)
cmd ["npm", "start"]

RUN git clone -b custom https://github.com/abaez/haste-server.git /opt/haste
WORKDIR /opt/haste
RUN npm install

expose 7777
ADD add /opt/haste/
