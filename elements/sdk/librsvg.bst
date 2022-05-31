kind: autotools
sources:
- kind: tar
  url: gnome_downloads:librsvg/2.52/librsvg-2.52.9.tar.xz
  ref: 1dc6a02df36eedc2d9f4a24cd8f9bc9d5f2874824f152e28ab4417103a6903e0
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
