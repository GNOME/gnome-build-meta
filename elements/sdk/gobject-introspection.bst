kind: meson
sources:
- kind: tar
  url: gnome_downloads:gobject-introspection/1.62/gobject-introspection-1.62.0.tar.xz
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dgtk_doc=true
    -Dcairo=disabled
    -Ddoctool=disabled
