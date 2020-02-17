kind: meson
sources:
- kind: tar
  url: gnome_downloads:gobject-introspection/1.63/gobject-introspection-1.63.2.tar.xz
  ref: 919d75ebe1c42d5aa250a9a9279eab56c184b03c027bcc60f9488c011f95bd27
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
  meson-local: -Dgtk_doc=true -Dcairo=disabled -Ddoctool=enabled
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{datadir}/gobject-introspection-1.0'
        - '%{datadir}/gobject-introspection-1.0/**'
        - '%{libdir}/libgirepository-1.0.so'
