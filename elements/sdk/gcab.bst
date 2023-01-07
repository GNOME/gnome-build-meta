kind: meson
sources:
- kind: git_tag
  url: gnome:gcab.git
  track: master
  ref: v1.5-4-g3b6942d7ff3bb0b1671f894aba2010b384809fc4
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
