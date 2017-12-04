#!/bin/bash

vncserver

if [ "$#" -eq 0 ]; then
  DISPLAY=:1 ./ApacheDirectoryStudio/ApacheDirectoryStudio
fi

exec "$@"
