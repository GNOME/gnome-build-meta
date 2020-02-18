kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-menus/3.32/gnome-menus-3.32.0.tar.xz
  ref: c850c64b2074265fe59e099a340b8689cf3dd4658dc9feddd2ab5e95f1a74b74
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
