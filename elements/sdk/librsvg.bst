kind: autotools
sources:
- kind: tar
  url: gnome_downloads:librsvg/2.52/librsvg-2.52.4.tar.xz
  ref: 660ec8836a3a91587bc9384920132d4c38d1d1718c67fe160c5213fe4dec2928
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/pango.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-local: >-
    --enable-gtk-doc
    --enable-vala
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/librsvg-2.so'
