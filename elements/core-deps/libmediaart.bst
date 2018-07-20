kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libmediaart/1.9/libmediaart-1.9.4.tar.xz
  ref: a57be017257e4815389afe4f58fdacb6a50e74fd185452b23a652ee56b04813d
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gtk-doc.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-qt
