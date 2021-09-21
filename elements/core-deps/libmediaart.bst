kind: meson
sources:
- kind: tar
  url: gnome_downloads:libmediaart/1.9/libmediaart-1.9.5.tar.xz
  ref: 07def5a42c482ae71d3e1f77a4d0fdc337f74226059a65284d6d5a241f0e9cd6
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
