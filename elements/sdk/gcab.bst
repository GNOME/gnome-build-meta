kind: meson
sources:
- kind: git_repo
  url: gnome:gcab.git
  track: master
  ref: v1.6-8-ge37f850f8d7bb43a8144b13ac4326f4cbb3e0dd7
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgcab-1.0.so'
