sources:
- kind: tar
  url: gnome_downloads:gobject-introspection/1.79/gobject-introspection-1.79.1.tar.xz
  ref: f80ea33ee05ca48fb997952bb46131cfbdd3751f7f5da068888739cbeb2d5443
- kind: patch_queue
  path: patches/gobject-introspection
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
