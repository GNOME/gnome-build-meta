kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-autoar/0.4/gnome-autoar-0.4.5.tar.xz
  ref: 838c5306fc38bfaa2f23abe24262f4bf15771e3303fb5dcb74f5b9c7a615dabe
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  meson-local: >-
    -Dgtk=false
    -Dvapi=true
