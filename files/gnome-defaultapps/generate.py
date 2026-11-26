#!/usr/bin/env python3
from argparse import ArgumentParser
from pathlib import Path
from functools import cmp_to_key
import tomllib
import os
import gi
gi.require_version("GLib", "2.0")
from gi.repository import Gio
from gi.repository import GioUnix
from gi.repository import GLib

# Parse CLI arguments
args = ArgumentParser(description="Scan installed applications to generate GNOME's default app lists")
args.add_argument("quirks", type=Path, help="Quirks file to control output")
args.add_argument("mimeapps_output", type=Path, help="Location of mimeapps output file")
args.add_argument("intentapps_output", type=Path, help="Location of intentapps output file")
args = args.parse_args();

# Load quirks
with open(args.quirks, "rb") as f:
    class wrapped(dict):
        __getattr__ = dict.get
    quirks = wrapped(tomllib.load(f))

os.environ["XDG_DATA_DIRS"] = ":".join(quirks.datadirs)

# Load the apps available on the system
types = {}
intents = {}  # {intent1: [app1, app2], intent2: [app3, app4]}
intents_scoped = {}  # {intent1: {scope1: [app1, app2], scope2: [app3, app4]}}
for app in Gio.AppInfo.get_all():
    if app.get_id().removesuffix('.desktop') in quirks.skip_apps:
        continue
    for type in app.get_supported_types():
        if type in types:
            types[type] += [app.get_id()]
        else:
            types[type] = [app.get_id()]
    desktop_app = GioUnix.DesktopAppInfo.new(app.get_id())
    key_file = GLib.KeyFile.new()
    key_file.load_from_file(app.get_filename(), GLib.KeyFileFlags.NONE)
    for intent in desktop_app.get_intents():
        if key_file.has_group(intent):
            intents_scoped.setdefault(intent, {})
            for scope in key_file.get_string_list(intent, "Supports"):
                if scope in intents_scoped[intent]:
                    intents_scoped[intent][scope] += [app.get_id()]
                else:
                    intents_scoped[intent][scope] = [app.get_id()]
        if intent in intents:
            intents[intent] += [app.get_id()]
        else:
            intents[intent] = [app.get_id()]

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

for intent, apps in intents.items():
    # First sort: ensure reproducible (alphabetical) order
    apps.sort()

    # Second sort: make incubator apps come before others
    apps.sort(key = cmp_to_key (_cmp_incubating))

for intent, scopes in intents_scoped.items():
    for scope, apps in scopes.items():
        # First sort: ensure reproducible (alphabetical) order
        apps.sort()

        # Second sort: make incubator apps come before others
        apps.sort(key = cmp_to_key (_cmp_incubating))

# Apply overrides.
overridden_types = {}
for ty, override in quirks.override_mimeapps.items():
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

overridden_intents = {}
for intent, override in quirks.override_intentapps.items():
    if intent not in overridden_intents:
        if intent in intents:
            overridden_intents[intent] = ' '.join(intents[intent])
        else:
            overridden_intents[intent] = '<none>'
    if isinstance(override, list):
        if len(override) == 0:
            del intents[intent]
        else:
            intents[intent] = list(map(lambda x: x + '.desktop', override))
    else:
        intents[intent] = [override + '.desktop']

overridden_intents_scoped = {}
for intent, scopes in quirks.override_intentapps_scoped.items():
    overridden_intents_scoped[intent] = {}
    for scope, override in scopes.items():
        if scope not in overridden_intents_scoped[intent]:
            if scope in intents_scoped[intent]:
                overridden_intents_scoped[intent][scope] = ' '.join(intents_scoped[intent][scope])
            else:
                overridden_intents_scoped[intent][scope] = '<none>'
        if isinstance(override, list):
            if len(override) == 0:
                del intents_scoped[intent][scope]
            else:
                intents_scoped[intent][scope] = list(map(lambda x: x + '.desktop', override))
        else:
            intents_scoped[intent][scope] = [override + '.desktop']
    del intents[intent]
    if not intents_scoped[intent]:
        del intents_scoped[intent]
    else:
        intents[intent] = []
        for scope, apps in intents_scoped[intent].items():
            for app in apps:
                if app not in intents[intent]:
                    intents[intent] += [app]

# Generate the output
with open(args.mimeapps_output, "w") as output:
    print(quirks.heading.strip(), file=output)
    print(quirks.heading_mimeapps.strip(), file=output)

    print("\n[Default Applications]", file=output)
    for type in sorted(types):
        apps = ';'.join(types[type])
        print(f"{type}={apps}", file=output)

    if len(overridden_types) > 0:
        print("\n# Tracking data to catch stale overrides:", file=output)
        for type in sorted(overridden_types):
            print(f"#OVERRIDE {type} WAS {overridden_types[type]}", file=output)

with open(args.intentapps_output, "w") as output:
    print(quirks.heading.strip(), file=output)

    print("\n[Default Applications]", file=output)
    for intent in sorted(intents):
        apps = ';'.join(intents[intent])
        print(f"{intent}={apps}", file=output)
    for intent in sorted(intents_scoped):
        print(f"\n[{intent}]", file=output)
        for scope in sorted(intents_scoped[intent]):
            apps = ';'.join(intents_scoped[intent][scope])
            print(f"{scope}={apps}", file=output)

    if len(overridden_intents) > 0:
        print("\n# Tracking data to catch stale overrides:", file=output)
        for intent in sorted(overridden_intents):
            print(f"#OVERRIDE {intent} WAS {overridden_intents[intent]}", file=output)

    if len(overridden_intents_scoped) > 0:
        print("\n# Tracking data to catch stale scoped overrides:", file=output)
        for intent in sorted(overridden_intents_scoped):
            for scope in sorted(overridden_intents_scoped[intent]):
                print(f"#OVERRIDE {intent} {scope} WAS {overridden_intents_scoped[intent][scope]}", file=output)
