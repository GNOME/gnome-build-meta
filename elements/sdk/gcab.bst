kind: meson

sources:
- kind: git_repo
  url: gnome:gcab.git
  track: master
  ref: v1.6-10-g9b7e9e49f97f517981204a768623ad25e74fc4ba

build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgcab-1.0.so'
