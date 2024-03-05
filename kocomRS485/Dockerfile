FROM python:3.12.2

ENV LANG C.UTF-8

# Copy data for add-on
COPY run.sh makeconf.sh rs485-2.0.0e.py /

# Install requirements for add-on
RUN apt-get update && apt-get -y install jq
RUN python3 -m pip install pyserial==3.4 && \
        python3 -m pip install paho-mqtt==2.0.0

WORKDIR /share

RUN chmod a+x /makeconf.sh
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]

