kind: meson

sources:
- kind: git_repo
  url: gnome:gdk-pixbuf.git
  track: master
  ref: 2.42.12-6-g09465bd9b787bcc08edf476e1fe43826f3e6f1e0

build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
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
