kind: meson
sources:
- kind: git_tag
  url: gnome:gcab.git
  track: master
  ref: v1.5-1-gad0baea50359c1978a9224ee60bf98d97bfb991f
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
