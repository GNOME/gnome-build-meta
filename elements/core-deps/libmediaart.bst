kind: meson
sources:
- kind: tar
  url: gnome_downloads:libmediaart/1.9/libmediaart-1.9.6.tar.xz
  ref: c3bc5025d7db380587f9c8eb800c611f6b5a16d6b4b78fcff93f62876a677f17
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: |
    -Dimage_library=gdk-pixbuf
