#!/bin/bash

PORT=8000
DIRECTORY=ostree-repo

if type -p caddy > /dev/null; then
    if caddy -version > /dev/null; then
        echo "Found caddy v1"
        exec caddy -port $PORT -root $DIRECTORY
    else
        echo "Found caddy v2"
        exec caddy file-server --listen :$PORT --root $DIRECTORY
    fi
elif type -p webfsd > /dev/null; then
    echo "Found webfsd"
    exec webfsd -F -l - -p $PORT -r $DIRECTORY
else
    echo "Running using python web server, please install caddy or webfs instead."
    exec python3 -m http.server $PORT --directory $DIRECTORY
fi
