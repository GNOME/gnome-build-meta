kind: autotools
# FIXME: https://gitlab.gnome.org/GNOME/gnome-build-meta/issues/24
sources:
- url: https://download.gnome.org/sources/librsvg/2.40/librsvg-2.40.20.tar.xz
  kind: tar
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- filename: sdk/gnome-common.bst
  type: build
- sdk/gobject-introspection.bst
- sdk/libcroco.bst
- sdk/pango.bst
- filename: sdk/vala.bst
  type: build
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  conf-local: --enable-vala=yes
