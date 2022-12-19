kind: meson

sources:
- kind: git_tag
  url: github:ebassi/graphene.git
  track: master
  ref: 1.10.6-35-gf89522ca60a76512b8b85c7b8e4d16b94849f22f

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
