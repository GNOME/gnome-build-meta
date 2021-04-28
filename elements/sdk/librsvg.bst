kind: autotools
sources:
- kind: tar
  url: gnome_downloads:librsvg/2.51/librsvg-2.51.1.tar.xz
  ref: 7d72c0de6cd1a767922328a214e346ce7e12fbfaf0a50de59d0e502532c1c75e
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:extensions/rust/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
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
