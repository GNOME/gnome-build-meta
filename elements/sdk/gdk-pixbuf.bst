kind: meson

sources:
- kind: git_repo
  url: gnome:gdk-pixbuf.git
  track: master
  ref: 2.43.3-47-g76640220460dcc2c2f867606e9aacd761af7f489

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
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgdk_pixbuf-2.0.so'
