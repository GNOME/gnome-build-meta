kind: meson

sources:
- kind: git_repo
  url: gnome:gcab.git
  track: master
  ref: v1.6-13-ge637a49ae784f828f42d6f8872ab6277bbb50872

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
