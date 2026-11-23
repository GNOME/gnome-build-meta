kind: meson

sources:
- kind: git_repo
  url: gnome:gcab.git
  track: master
  ref: v1.6-84-g5f389de4cf7bc743efae9bc9810f712fa272377f

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgcab-1.0.so'
