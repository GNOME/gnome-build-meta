# If Cargo.lock file is not provided, generate it:
# cargo generate-lockfile
# Then run this script into the source directory. It will generate
# file "sources.yml", to insert into .bst element.

import pytoml
import json
import os, sys

with open('Cargo.lock', 'r') as f:
    lock = pytoml.load(f)

with open('sources.yml', 'wb') as sources:
    for package in lock['package']:
        if 'source' not in package:
            continue

        name = package['name']
        version = package['version']
        lines = ['- kind: crate',
                 '  url: https://static.crates.io/crates/{name}/{name}-{version}.crate'.format(name = name, version = version)]

        sources.write(('\n'.join(lines) + '\n').encode('ascii'))
