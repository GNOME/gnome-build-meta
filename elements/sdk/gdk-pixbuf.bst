kind: meson

sources:
- kind: tar
  url: gnome_downloads:gdk-pixbuf/2.44/gdk-pixbuf-2.44.3.tar.xz
  ref: 40a92dcc237ff94b63a80c159a3f6f22cd59f6fb4961f201c78799fa2c8ac0a6
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/libglycin.bst
- freedesktop-sdk.bst:components/jpeg.bst
- freedesktop-sdk.bst:components/libpng.bst
- freedesktop-sdk.bst:components/libtiff.bst
- freedesktop-sdk.bst:components/shared-mime-info.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dgtk_doc=true
    -Dman=false
    -Dbuiltin_loaders='glycin'
    -Dthumbnailer=disabled
    -Dpng=disabled
    -Dtiff=disabled
    -Djpeg=disabled
    -Dgif=disabled
    -Dandroid=disabled

public:
  bst:
    integration-commands:
    - gdk-pixbuf-query-loaders --update-cache
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgdk_pixbuf-2.0.so'
