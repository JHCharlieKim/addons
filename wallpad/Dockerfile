FROM node:18.15.0

ENV LANG C.UTF-8

WORKDIR /
RUN apt-get update && \
    apt-get install -y jq

COPY package.json /
RUN npm install

COPY run.sh /
COPY js /js

WORKDIR /share

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
