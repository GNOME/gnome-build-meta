kind: autotools
sources:
- kind: git
  url: git_gnome_org:libpeas
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/pygobject.bst
- base.bst
variables:
  conf-local: --enable-python3
