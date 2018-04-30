kind: autotools
# FIXME: https://gitlab.gnome.org/GNOME/gnome-build-meta/issues/24
sources:
- url: https://download.gnome.org/sources/librsvg/2.40/librsvg-2.40.20.tar.xz
  kind: tar
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gnome-common.bst
- sdk/gobject-introspection.bst
- sdk/libcroco.bst
- sdk/pango.bst
- sdk/vala.bst
- base.bst
variables:
  conf-local: --enable-vala=yes
