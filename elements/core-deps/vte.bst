kind: meson

sources:
- kind: tar
  url: gnome_downloads:vte/0.66/vte-0.66.2.tar.xz
  ref: e89974673a72a0a06edac6d17830b82bb124decf0cb3b52cebc92ec3ff04d976
- kind: patch
  path: files/vte/069b68f393c46ebfc6734708f1446419ceed95da.patch
- kind: patch
  path: files/vte/ba78631c2d1293575f9fef3d90989f3bcb97d077.patch
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/boost.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:components/fribidi.bst
- freedesktop-sdk.bst:components/gnutls.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Ddocs=true

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libvte-2.91.so'
