kind: autotools
sources:
- kind: tar
  url: gnome_downloads:librsvg/2.50/librsvg-2.50.1.tar.xz
  ref: 9bd9799322e06cf5db19b9f7afb728edac6efcf0110baafc44f0f96f45df9a09
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
