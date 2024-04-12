kind: meson
sources:
- kind: git_repo
  url: gnome:gcab.git
  track: master
  ref: v1.6-3-g1de093faedf14cb0597b884e0d0a0b7bc99890f8
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgcab-1.0.so'
