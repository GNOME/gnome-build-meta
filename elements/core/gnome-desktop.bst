kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-desktop/3.30/gnome-desktop-3.30.0.tar.xz
  ref: 45494f6af18d9125a0fd1024f7442fcc5d3219fca79527d4aa1906e37af795fd
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
