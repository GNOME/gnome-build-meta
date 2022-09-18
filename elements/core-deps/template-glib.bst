kind: meson

sources:
- kind: tar
  url: gnome_downloads:template-glib/3.36/template-glib-3.36.0.tar.xz
  ref: 1c129525ae64403a662f7666f6358386a815668872acf11cb568ab39bba1f421
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
