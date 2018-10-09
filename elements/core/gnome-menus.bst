kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-menus/3.13/gnome-menus-3.13.3.tar.xz
depends:
- sdk/glib.bst
- sdk/gnome-common.bst
- sdk/gobject-introspection.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
