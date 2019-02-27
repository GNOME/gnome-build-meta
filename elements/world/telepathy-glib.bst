kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:telepathy/telepathy-glib
  track: master
depends:
- core-deps/avahi.bst
- sdk/dbus-glib.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-vala-bindings --disable-fatal-warnings
