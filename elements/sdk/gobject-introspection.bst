kind: meson
sources:
- kind: tar
  url: gnome_downloads:gobject-introspection/1.75/gobject-introspection-1.75.4.tar.xz
  ref: 96e64c73fcc2baf50898c12615d65f8dc9f218a407fb3deef8a5c299262083ce
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
