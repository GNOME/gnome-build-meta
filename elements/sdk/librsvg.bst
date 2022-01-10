kind: autotools

sources:
- kind: tar
  url: gnome_downloads:librsvg/2.53/librsvg-2.53.0.tar.xz
  ref: 21af2c474ecea4b1beb94102057417bb15c63b65c8f5e858aa282c468f93176e
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
