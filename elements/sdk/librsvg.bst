kind: autotools
sources:
- kind: tar
  url: gnome_downloads:librsvg/2.49/librsvg-2.49.3.tar.xz
  ref: 963b06f62dd5aa2e947e83b29dfc682d601e24f7c69eb0764304853cea22db96
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
