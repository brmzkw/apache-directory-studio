#!/bin/bash

vncserver

DISPLAY=:1 ./ApacheDirectoryStudio/ApacheDirectoryStudio

exec "$@"
