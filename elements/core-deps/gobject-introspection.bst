kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gobject-introspection/1.56/gobject-introspection-1.56.1.tar.xz
  ref: 5b2875ccff99ff7baab63a34b67f8c920def240e178ff50add809e267d9ea24b
depends:
- core-deps/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-python=python3
