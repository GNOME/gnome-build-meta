kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gobject-introspection
  track: master
depends:
- core-deps/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-python=python3
