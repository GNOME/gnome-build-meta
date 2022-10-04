kind: meson

sources:
- kind: git_tag
  url: github:ebassi/graphene.git
  track: master
  ref: 1.10.6-31-gac825971fd45cb932337fab36762c1317ff6c4be

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
