#!/bin/bash

rm -f project.refs.commit
python3 ./utils/partial_track.py

if [ -f project.refs.commit ]; then
    echo --deps none
    git diff --name-only $(cat project.refs.commit) HEAD | sed '\,elements/,{;s///;p;};d'
else
    echo --deps all
    echo "$@"
fi
