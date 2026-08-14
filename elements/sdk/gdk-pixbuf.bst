kind: meson

sources:
- kind: git_repo
  url: gnome:gdk-pixbuf.git
  track: master
  ref: 2.44.8-1-g4f98eab5c6de3a3c1d2535a81f35b1f9114966fb

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
