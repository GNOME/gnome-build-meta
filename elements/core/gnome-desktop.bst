kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-desktop/3.30/gnome-desktop-3.30.2.1.tar.xz
  ref: 1b803ac6dbd844ff3fb0ad03ba0cbe22207e10363dafee43c1720eeaae2b491f
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- filename: sdk/gnome-common.bst
  type: build
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: sdk/yelp-tools.bst
  type: build
- filename: desktop/libseccomp.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --with-gnome-distributor=gnome-build-meta
