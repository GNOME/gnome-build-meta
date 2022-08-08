kind: meson

sources:
- kind: tar
  url: gnome_downloads:gdk-pixbuf/2.42/gdk-pixbuf-2.42.9.tar.xz
  ref: 28f7958e7bf29a32d4e963556d241d0a41a6786582ff6a5ad11665e0347fc962

build-depends:
- sdk/gobject-introspection.bst
- sdk-deps/gi-docgen.bst
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
    -Dgtk_doc=true
    -Dman=false

public:
  bst:
    integration-commands:
    - gdk-pixbuf-query-loaders --update-cache
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgdk_pixbuf-2.0.so'
