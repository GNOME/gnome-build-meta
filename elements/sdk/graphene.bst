kind: meson

sources:
- kind: tar
  url: gnome_downloads:graphene/1.10/graphene-1.10.6.tar.xz
  ref: 80ae57723e4608e6875626a88aaa6f56dd25df75024bd16e9d77e718c3560b25
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgraphene-1.0.so'
