kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/libsoup
  track: master
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/libpsl.bst
- sdk/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-tls-check
