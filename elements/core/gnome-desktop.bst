depends:
- core-deps/gdk-pixbuf.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/yelp-tools.bst
- core/gsettings-desktop-schemas.bst
- filename: desktop/libseccomp.bst
  junction: freedesktop-sdk.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: e8e027a0a26bf0f8e1805166fcd0826216dcae3d3421892117a84a532e1a464f
  url: https://download.gnome.org/sources/gnome-desktop/3.29/gnome-desktop-3.29.91.tar.xz
variables:
  conf-local: --with-gnome-distributor=gnome-build-meta
