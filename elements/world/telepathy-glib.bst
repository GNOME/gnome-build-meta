kind: autotools
sources:
- kind: git
  url: git_freedesktop_org:telepathy/telepathy-glib
  track: master
depends:
- sdk/avahi.bst
- sdk/dbus-glib.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- base.bst
variables:
  conf-local: --enable-vala-bindings --disable-fatal-warnings
