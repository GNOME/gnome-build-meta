kind: meson
sources:
- kind: tar
  url: gnome_downloads:gom/0.5/gom-0.5.0.tar.xz
  ref: b6a39e815e49671e1d2589caaf2988f70acbe000fab6435ead7f14bcd64d5956
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
