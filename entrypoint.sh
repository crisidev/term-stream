#!/bin/sh

usage() {
  echo "usage: $0 program [-t|-g]"
  exit 1
}

if [ $# -lt 1 ]; then
  usage
fi

PROGRAM="$1"
if [ "${PROGRAM}" = "movies" ]; then
  if [ "$2" = "-g" ]; then
    gotty -p 8080 --term xterm-256color -- python /ascii-movies/ascii_telnet_server.py --stdout -f /ascii-movies/movies
  elif [ "$2" = "-t" ]; then
    python /ascii-movies/ascii_telnet_server.py -f /ascii-movies/movies
  else 
    gotty -p 8080 --term xterm-256color -- python /ascii-movies/ascii_telnet_server.py --stdout -f /ascii-movies/movies/starwars
  fi
elif [ "${PROGRAM}" = "maps" ]; then
  gotty -p 8080 --term xterm-256color -w -- mapscii
else
  usage
fi
