kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-menus/3.31/gnome-menus-3.31.90.tar.xz
depends:
- sdk/glib.bst
- sdk/gnome-common.bst
- sdk/gobject-introspection.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
