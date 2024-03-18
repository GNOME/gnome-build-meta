sources:
- kind: tar
  url: gnome_downloads:gobject-introspection/1.80/gobject-introspection-1.80.0.tar.xz
  ref: 54a90b4a3cb82fd6a3e8b8a7775178ebc954af3c2bc726ed5961e6503ce62636
build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- sdk/gtk-doc.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{datadir}/gobject-introspection-1.0'
        - '%{datadir}/gobject-introspection-1.0/**'
        - '%{libdir}/libgirepository-1.0.so'
