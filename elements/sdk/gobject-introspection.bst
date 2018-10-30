kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gobject-introspection
  track: master
depends:
- sdk/glib.bst
- filename: base/bison.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-python=python3
