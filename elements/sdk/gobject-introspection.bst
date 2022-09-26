kind: meson
sources:
- kind: tar
  url: gnome_downloads:gobject-introspection/1.72/gobject-introspection-1.72.1.tar.xz
  ref: 012e313186e3186cf0fde6decb57d970adf90e6b1fac5612fe69cbb5ba99543a
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/python3-mako.bst
- freedesktop-sdk.bst:components/python3-markdown.bst
variables:
  meson-local: >-
    -Dgtk_doc=true
    -Dcairo=disabled
    -Ddoctool=enabled
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{datadir}/gobject-introspection-1.0'
        - '%{datadir}/gobject-introspection-1.0/**'
        - '%{libdir}/libgirepository-1.0.so'
