kind: meson

sources:
- kind: git_tag
  url: github:ebassi/graphene.git
  track: master
  ref: 1.10.6-40-ga0595ecc69b60bf2ec38e283650749f316a586a7

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
