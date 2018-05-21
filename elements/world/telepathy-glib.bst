kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:telepathy/telepathy-glib
  track: master
depends:
- core-deps/avahi.bst
- core-deps/dbus-glib.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-vala-bindings --disable-fatal-warnings
