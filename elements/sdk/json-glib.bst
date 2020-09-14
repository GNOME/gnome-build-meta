kind: meson
sources:
- kind: tar
  url: gnome_downloads:json-glib/1.6/json-glib-1.6.0.tar.xz
  ref: 0d7c67602c4161ea7070fab6c5823afd9bd7f7bc955f652a50d3753b08494e73
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
