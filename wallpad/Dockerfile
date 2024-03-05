FROM node:18.15.0

ENV LANG C.UTF-8

COPY run.sh /
COPY daelim_socket.js /


# Install requirements for add-on
RUN apk add --no-cache jq npm make gcc g++ python3 linux-headers udev && \
    npm init -f && \
    npm install mqtt && \
    npm install serialport --build-from-source=serialport 

WORKDIR /share

RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
