#!/usr/bin/env python3
from argparse import ArgumentParser
from pathlib import Path
from functools import cmp_to_key
import tomllib
import os
import gi
gi.require_version("GLib", "2.0")
from gi.repository import Gio
from gi.repository import GLib

# Parse CLI arguments
args = ArgumentParser(description="Scan installed applications to generate GNOME's intentapps.list")
args.add_argument("output", type=Path, help="Location of output file")
args.add_argument("quirks", type=Path, help="Quirks file to control output")
args = args.parse_args();

# Load quirks
with open(args.quirks, "rb") as f:
    class wrapped(dict):
        __getattr__ = dict.get
    quirks = wrapped(tomllib.load(f))

#os.environ["XDG_DATA_DIRS"] = ":".join(quirks.datadirs)

# Load the apps available on the system
intents = {} #{intent: {apps: [app1, app2], scopes: {scope1: app1, scope2: app2}}
for app in Gio.AppInfo.get_all():
    if app.get_id().removesuffix('.desktop') in quirks.skip_apps:
        continue
    desktop_app = Gio.DesktopAppInfo.new(app.get_id())
    key_file = GLib.KeyFile.new()
    key_file.load_from_file(app.get_filename(), GLib.KeyFileFlags.NONE)
    
    for intent in desktop_app.get_intents():
        has_scopes = key_file.has_group(intent)
        if has_scopes:
            scopes = key_file.get_string_list(intent, "Supports")
        if intent in intents:
            intents[intent]['apps'] += [app.get_id()]
            if has_scopes:
                for scope in scopes:
                    if scope not in intents[intent]['scopes']:
                        intents[intent]['scopes'][scope] = []
                    intents[intent]['scopes'][scope] += [app.get_id()]
        else:
            intents[intent] = {}
            intents[intent]['apps'] = [app.get_id()]
            intents[intent]['scopes'] = {}
            if has_scopes:
                for scope in scopes:
                    intents[intent]['scopes'][scope] = [app.get_id()]

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

for _intent, apps_scopes in intents.items():
    # First sort: ensure reproducible (alphabetical) order
    apps_scopes['apps'].sort()

    # Second sort: make incubator apps come before others
    apps_scopes['apps'].sort(key = cmp_to_key(_cmp_incubating))

# Apply overrides.
overridden_intents = {}
for intent, override in quirks.override.items():
    if intent not in overridden_intents:
        if intent in intents:
            overridden_intents[intent] = ' '.join(intents[intent]['apps'])
        else:
            overridden_intents[intent] = '<none>'
    if isinstance(override, list):
        if len(override) == 0:
            del intents[intent]
        else:
            intents[intent] = {}
            intents[intent]['apps'] = []
            intents[intent]['scopes'] = {}
            for app_scopes in override:
                app, *scopes = app_scopes.split(';')
                intents[intent]['apps'] += [app + '.desktop']
                if scopes:
                    scopes = scopes[0].split(',')
                    for scope in scopes:
                        if scope not in intents[intent]['scopes']:
                            intents[intent]['scopes'][scope] = []
                        intents[intent]['scopes'][scope] += [app]
    else:
        app, scopes = override.split(';')
        intents[intent] = [app + '.desktop']
        if scopes:
            scopes = scopes.split(',')
            for scope in scopes:
                if scope not in intents[intent]['scopes']:
                    intents[intent]['scopes'][scope] = []
                intents[intent]['scopes'][scope] += [app]

# Generate the output
print(intents)
with open(args.output, "w") as output:
    print(quirks.heading.strip(), file=output)

    print("\n[Default Applications]", file=output)
    for intent in sorted(intents):
        apps = ';'.join(intents[intent]['apps'])
        print(f"{intent}={apps}", file=output)

    for intent in sorted(intents):
        print(f"\n[{intent}]", file=output)
        for scope, apps in intents[intent]['scopes'].items():
            apps_line = ';'.join(apps)
            print(f"{scope}={apps_line}", file=output)

    if len(overridden_intents) > 0:
        print("\n# Tracking data to catch stale overrides:", file=output)
        for intent in sorted(overridden_intents):
            print(f"#OVERRIDE {intent} WAS {overridden_intents[intent]}", file=output)
