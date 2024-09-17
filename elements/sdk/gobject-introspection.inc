sources:
- kind: tar
  url: gnome_downloads:gobject-introspection/1.82/gobject-introspection-1.82.0.tar.xz
  ref: 0f5a4c1908424bf26bc41e9361168c363685080fbdb87a196c891c8401ca2f09
- kind: patch
  path: patches/gobject-introspection/setuptools74.patch
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
