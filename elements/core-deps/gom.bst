kind: meson
sources:
- kind: tar
  url: gnome_downloads:gom/0.5/gom-0.5.4.tar.xz
  ref: 57ba806fe080a937d5664178d21bad7653b2c561ea128187a7b10bc1762b7f65
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
