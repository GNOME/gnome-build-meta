kind: meson
sources:
- kind: tar
  url: https://gitlab.gnome.org/GNOME/gnome-desktop/-/archive/3.33.1/gnome-desktop-3.33.1.tar.bz2
depends:
- core-deps/libgudev.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk+-3.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: desktop/itstools.bst
  junction: freedesktop-sdk.bst
- filename: desktop/libseccomp.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dgnome-distributor=gnome-build-meta
