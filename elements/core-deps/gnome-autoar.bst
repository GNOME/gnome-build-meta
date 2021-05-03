kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-autoar/0.3/gnome-autoar-0.3.2.tar.xz
  ref: a48c4d5ce9a9ed05ba8bc8fdeb9af2d1a7bd8091c2911d6c37223c4f488f7c72
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
