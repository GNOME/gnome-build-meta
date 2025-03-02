sources:
- kind: tar
  url: gnome_downloads:gobject-introspection/1.83/gobject-introspection-1.83.2.tar.xz
  ref: 8a0442517d4d793e44c64cbec9d284df71c94f19e6409a75e217a3d82bda8eae
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
