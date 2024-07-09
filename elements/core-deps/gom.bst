kind: meson
sources:
- kind: tar
  url: gnome_downloads:gom/0.5/gom-0.5.2.tar.xz
  ref: 4cde83adf6f826836ed575d420f987ad1f559606b218224b69bf559f2ed7e205
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
