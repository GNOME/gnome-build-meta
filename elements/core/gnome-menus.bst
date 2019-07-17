kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-menus/3.32/gnome-menus-3.32.0.tar.xz
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
