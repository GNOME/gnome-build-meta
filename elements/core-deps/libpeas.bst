kind: autotools
sources:
- kind: git
  url: git_gnome_org:libpeas
  track: master
depends:
- core-deps/glib.bst
- core-deps/gnome-common.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/pygobject.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-python3
