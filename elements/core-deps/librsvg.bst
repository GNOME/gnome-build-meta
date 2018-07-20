kind: autotools
# FIXME: https://gitlab.gnome.org/GNOME/gnome-build-meta/issues/24
sources:
- url: https://download.gnome.org/sources/librsvg/2.40/librsvg-2.40.20.tar.xz
  kind: tar
  ref: cff4dd3c3b78bfe99d8fcfad3b8ba1eee3289a0823c0e118d78106be6b84c92b
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gnome-common.bst
- core-deps/gobject-introspection.bst
- core-deps/libcroco.bst
- core-deps/pango.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-vala=yes
