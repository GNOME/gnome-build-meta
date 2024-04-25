kind: meson
sources:
- kind: tar
  url: gnome_downloads:gom/0.5/gom-0.5.1.tar.xz
  ref: 15dc4d1302f8210cf08ccba9b2696417fd946d9911bbaf5183cbe36d25d570e0
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
