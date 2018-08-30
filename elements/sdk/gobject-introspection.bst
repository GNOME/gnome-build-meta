kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gobject-introspection/1.57/gobject-introspection-1.57.3.tar.xz
  ref: e6487e6f18930dd7fa2504c0425938e065c643bdf007424987490d80890f1363
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
