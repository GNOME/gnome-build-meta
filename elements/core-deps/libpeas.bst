kind: autotools
sources:
- kind: git
  url: git_gnome_org:libpeas
  track: master
depends:
- sdk/glib.bst
- sdk/gnome-common.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- base.bst
variables:
  conf-local: --enable-python3
