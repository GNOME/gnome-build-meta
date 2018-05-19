kind: autotools
sources:
- kind: git
  url: git_gnome_org:gobject-introspection
  track: master
depends:
- sdk/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-python=python3
