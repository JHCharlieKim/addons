#!/bin/sh

SHARE_DIR=/share/kocom
VERSION=2.0.0e

mkdir -p $SHARE_DIR
mv /rs485-${VERSION}.py $SHARE_DIR
/makeconf.sh

echo "[Info] Run Wallpad Controller"
cd $SHARE_DIR
python3 $SHARE_DIR/rs485-${VERSION}.py

# for dev
while true; do echo "still live"; sleep 100; done
