kind: meson
sources:
- kind: tar
  url: gnome_downloads:gobject-introspection/1.71/gobject-introspection-1.71.0.tar.xz
  ref: 555dc3997c2892228543029f58610b83fc1da733e4e3d18e9363d7b5a81164dd
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
