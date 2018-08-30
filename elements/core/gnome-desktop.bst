kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-desktop/3.29/gnome-desktop-3.29.91.tar.xz
  ref: e8e027a0a26bf0f8e1805166fcd0826216dcae3d3421892117a84a532e1a464f
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
