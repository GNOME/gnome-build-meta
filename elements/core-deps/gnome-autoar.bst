kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-autoar/0.3/gnome-autoar-0.3.1.tar.xz
  ref: 0e78713e6f0de339fdee16bab82753ae290fe80fa7b4ba6e3db8c1465b81d0f8
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:bootstrap-import.bst
