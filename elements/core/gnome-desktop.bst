kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-desktop/3.30/gnome-desktop-3.30.1.tar.xz
depends:
- core-deps/libgudev.bst
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
  meson-local: -Dgnome-distributor=gnome-build-meta
