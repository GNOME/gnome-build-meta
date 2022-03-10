kind: autotools

sources:
- kind: tar
  url: gnome_downloads:librsvg/2.53/librsvg-2.53.2.tar.xz
  ref: 0663c527eac1a71c95a65178c02ff11ade23a9aea34eaf924ca66e4a9eea6b7c
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- sdk-deps/gi-docgen.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
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
