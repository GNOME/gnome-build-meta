sources:
- kind: tar
  url: gnome_downloads:gobject-introspection/1.84/gobject-introspection-1.84.0.tar.xz
  ref: 945b57da7ec262e5c266b89e091d14be800cc424277d82a02872b7d794a84779
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
