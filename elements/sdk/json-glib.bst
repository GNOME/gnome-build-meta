kind: meson
sources:
- kind: tar
  url: gnome_downloads:json-glib/1.4/json-glib-1.4.4.tar.xz
  ref: 720c5f4379513dc11fd97dc75336eb0c0d3338c53128044d9fabec4374f4bc47
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
