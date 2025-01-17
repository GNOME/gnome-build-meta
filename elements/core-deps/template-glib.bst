kind: meson

sources:
- kind: tar
  url: gnome_downloads:template-glib/3.36/template-glib-3.36.3.tar.xz
  ref: d528b35b2cf90e07dae50e25e12fbadb0eb048f57fd5151cf9f6e98cce1df20e
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
