kind: autotools
sources:
- kind: tar
  url: gnome_downloads:librsvg/2.52/librsvg-2.52.5.tar.xz
  ref: 407cbbab518137ea18a3f3220bea180fbee75f3e5bd6ba10a7a862c1a6f74d82
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
