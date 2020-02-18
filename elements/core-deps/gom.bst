kind: meson
sources:
- kind: tar
  url: gnome_downloads:gom/0.4/gom-0.4.tar.xz
  ref: 68d08006aaa3b58169ce7cf1839498f45686fba8115f09acecb89d77e1018a9d
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pygobject.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
