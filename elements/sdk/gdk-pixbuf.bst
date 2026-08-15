kind: meson

sources:
- kind: git_repo
  url: gnome:gdk-pixbuf.git
  track: master
  ref: 2.44.8-2-gd4bc06247729b7f1d372dca26d3e1a5d9e7a782a

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst

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
    -Dtests=false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgdk_pixbuf-2.0.so'
