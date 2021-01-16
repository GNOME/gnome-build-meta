kind: meson
sources:
- kind: tar
  url: gnome_downloads:gdk-pixbuf/2.42/gdk-pixbuf-2.42.2.tar.xz
  ref: 83c66a1cfd591d7680c144d2922c5955d38b4db336d7cd3ee109f7bcf9afef15
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/jpeg.bst
- freedesktop-sdk.bst:components/libpng.bst
- freedesktop-sdk.bst:components/libtiff.bst
- freedesktop-sdk.bst:components/shared-mime-info.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dx11=false
public:
  bst:
    integration-commands:
    - gdk-pixbuf-query-loaders --update-cache
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgdk_pixbuf-2.0.so'
