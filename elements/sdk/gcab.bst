kind: meson
sources:
- kind: git_tag
  url: gnome:gcab.git
  track: master
  ref: v1.6-1-g8a8ab90e9e31a894858d5220442d8239d2b78440
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
