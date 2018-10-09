kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gobject-introspection/1.58/gobject-introspection-1.58.0.tar.xz
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
