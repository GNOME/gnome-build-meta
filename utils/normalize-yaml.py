#!/usr/bin/env python3

from ruamel.yaml import round_trip_load, round_trip_dump
import sys

for filename in sys.argv[1:]:
    with open(filename) as f:
        data = round_trip_load(f, preserve_quotes=True)

    with open(filename, 'w') as f:
        round_trip_dump(data, f, width=200)
