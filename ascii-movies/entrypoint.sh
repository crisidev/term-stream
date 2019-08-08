#!/bin/sh

MOVIE=$(find movies | shuf -n 1)
if [ "$1" == "--gotty" ]; then
  gotty -p 8080 -- python ascii_telnet_server.py --stdout -f "${MOVIE}"
else
  python ascii_telnet_server.py -f "${MOVIE}"
fi
