kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libpeas/1.22/libpeas-1.22.0.tar.xz
  ref: 5b2fc0f53962b25bca131a5ec0139e6fef8e254481b6e777975f7a1d2702a962
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/pygobject.bst
- base.bst
variables:
  conf-local: --enable-python3
