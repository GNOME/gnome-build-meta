kind: autotools
sources:
- kind: tar
  url: gnome_downloads:libmediaart/1.9/libmediaart-1.9.4.tar.xz
  ref: a57be017257e4815389afe4f58fdacb6a50e74fd185452b23a652ee56b04813d
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- filename: sdk/gobject-introspection.bst
  type: build
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/vala.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-qt
