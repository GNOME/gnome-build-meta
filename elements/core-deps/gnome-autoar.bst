kind: autotools
sources:
- kind: tar
  url: gnome_downloads:gnome-autoar/0.3/gnome-autoar-0.3.0.tar.xz
  ref: f2c112c0120cca2bf5a82c5b0ac8cba90ce10d21fec78f50a3bc513fdd64586b
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
