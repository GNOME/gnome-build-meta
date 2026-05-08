kind: meson

sources:
- kind: git_repo
  url: github:ebassi/graphene.git
  track: "*.*.*"
  ref: 1.10.8-0-g4e2578450809c2099400cf85caf18eafcd7100aa

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gobject-introspection.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgraphene-1.0.so'
