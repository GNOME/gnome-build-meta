kind: meson
sources:
- kind: tar
  url: gnome_downloads:json-glib/1.5/json-glib-1.5.2.tar.xz
  ref: ad08438327b6106dc040c0581477bdf1cd3daaa5d285920cc768b8627f746666
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libjson-glib-1.0.so'
