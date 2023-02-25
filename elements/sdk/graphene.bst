kind: meson

sources:
- kind: git_tag
  url: github:ebassi/graphene.git
  track: master
  ref: 1.10.6-38-g5c142f115fa8fa74e04b6e66162ac2e7fee317b5

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
