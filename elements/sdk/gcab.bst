kind: meson
sources:
- kind: git_repo
  url: gnome:gcab.git
  track: master
  ref: v1.6-4-g8c9f2aae79f3ba084656ae30edaf77ffa637f65b
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
