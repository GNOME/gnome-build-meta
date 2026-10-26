kind: meson

sources:
- kind: git_repo
  url: gnome:gcab.git
  track: master
  ref: v1.6-76-gb3f6cde5deeac4811f118c0ef7d42bfc0387a921

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
