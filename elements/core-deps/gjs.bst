kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:gjs
  track: master
depends:
- core-deps/gobject-introspection.bst
- core-deps/mozjs52.bst
- filename: desktop/dbus.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-installed-tests
