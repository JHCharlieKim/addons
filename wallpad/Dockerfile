FROM node:18.15.0

ENV LANG C.UTF-8

WORKDIR /share

COPY run.sh .
COPY daelim_socket.js .
COPY package.json .

RUN npm install

RUN chmod a+x ./run.sh

CMD [ "./run.sh" ]
