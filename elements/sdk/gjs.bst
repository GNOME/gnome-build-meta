kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gjs
  track: master
depends:
- sdk/gobject-introspection.bst
- sdk/mozjs52.bst
- filename: desktop/dbus.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-installed-tests
