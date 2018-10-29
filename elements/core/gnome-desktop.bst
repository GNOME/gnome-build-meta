kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-desktop/3.30/gnome-desktop-3.30.2.tar.xz
  ref: 5475e693cb7ada801a36e8d16bc0dbb58930b793f455419b205cd9241d63d14c
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
