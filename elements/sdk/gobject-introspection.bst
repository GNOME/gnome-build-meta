kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gobject-introspection
  track: master
depends:
- sdk/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  conf-local: --with-python=python3
