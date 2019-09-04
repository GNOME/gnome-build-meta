kind: meson
sources:
- kind: tar
  url: gnome_downloads:gom/0.3/gom-0.3.3.tar.xz
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pygobject.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
