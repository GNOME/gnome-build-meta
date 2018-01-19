kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:telepathy/telepathy-glib
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/vala.bst
- base.bst
variables:
  conf-local: --enable-vala-bindings --disable-fatal-warnings
