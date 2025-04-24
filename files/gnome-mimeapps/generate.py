#!/usr/bin/env python3
from argparse import ArgumentParser
from pathlib import Path
from functools import cmp_to_key
import tomllib
import os
import gi
gi.require_version("GLib", "2.0")
from gi.repository import Gio

# Parse CLI arguments
args = ArgumentParser(description="Scan installed applications to generate GNOME's mimeapps.list")
args.add_argument("quirks", type=Path, help="Quirks file to control output")
args.add_argument("output", type=Path, help="Location of output file")
args = args.parse_args();

# Load quirks
with open(args.quirks, "rb") as f:
    class wrapped(dict):
        __getattr__ = dict.get
    quirks = wrapped(tomllib.load(f))

os.environ["XDG_DATA_DIRS"] = ":".join(quirks.datadirs)

# Load the apps available on the system
types = {}
for app in Gio.AppInfo.get_all():
    if app.get_id().removesuffix('.desktop') in quirks.skip_apps:
        continue
    for type in app.get_supported_types():
        if type in types:
            types[type] += [app.get_id()]
        else:
            types[type] = [app.get_id()]

# Sort
def _cmp_incubating(a, b):
    a = a.removesuffix('.desktop')
    b = b.removesuffix('.desktop')

    if quirks.incubating.get(a) == b:
        # Incubating app A replaces core app B. A takes priority over B in the
        # defaults list. Takes priority = appears earlier in the list, so A < B
        return -1
    elif quirks.incubating.get(b) == a:
        return 1 # The opposite situation
    else:
        return 0 # These apps aren't related

for _type, apps in types.items():
    # First sort: ensure reproducible (alphabetical) order
    apps.sort()

    # Second sort: make incubator apps come before others
    apps.sort(key = cmp_to_key(_cmp_incubating))

# Apply overrides.
overridden_types = {}
for ty, override in quirks.override.items():
    if ty not in overridden_types:
        if ty in types:
            overridden_types[ty] = ' '.join(types[ty])
        else:
            overridden_types[ty] = '<none>'
    if isinstance(override, list):
        if len(override) == 0:
            del types[ty]
        else:
            types[ty] = list(map(lambda x: x + '.desktop', override))
    else:
        types[ty] = [override + '.desktop']

# Generate the output
with open(args.output, "w") as output:
    print(quirks.heading.strip(), file=output)

    print("\n[Default Applications]", file=output)
    for type in sorted(types):
        apps = ';'.join(types[type])
        print(f"{type}={apps}", file=output)

    if len(overridden_types) > 0:
        print("\n# Tracking data to catch stale overrides:", file=output)
        for type in sorted(overridden_types):
            print(f"#OVERRIDE {type} WAS {overridden_types[type]}", file=output)
