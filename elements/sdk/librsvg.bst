kind: autotools
sources:
- kind: tar
  url: gnome_downloads:librsvg/2.48/librsvg-2.48.9.tar.xz
  ref: 3e7d78ba6a878799b0cf951004b9763a7f35d49ea845b89036d71fe89e28bd9c
build-depends:
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:extensions/rust/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/pango.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --disable-gtk-doc
    --enable-vala
environment:
  PATH: /usr/bin:/usr/lib/sdk/rust/bin
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/librsvg-2.so'
