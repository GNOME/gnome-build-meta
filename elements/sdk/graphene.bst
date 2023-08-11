kind: meson

sources:
- kind: git_tag
  url: github:ebassi/graphene.git
  track: master
  ref: 1.10.6-42-g0cfa05ff62f244e4d5e7ac35a1979a23f25c5151

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
