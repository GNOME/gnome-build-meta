kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:telepathy/telepathy-glib
  track: master
depends:
- world/avahi.bst
- sdk/dbus-glib.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-vala-bindings --disable-fatal-warnings
