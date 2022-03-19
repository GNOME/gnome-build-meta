kind: import

sources:
- kind: local
  path: files/gnome-console/99-fish-override.gschema.override

config:
  target: '%{datadir}/glib-2.0/schemas/'
