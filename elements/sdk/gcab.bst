kind: meson

sources:
- kind: git_repo
  url: gnome:gcab.git
  track: master
  ref: v1.6-80-gee34df5c8106029c71c014c1de82f79ae876b914

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
