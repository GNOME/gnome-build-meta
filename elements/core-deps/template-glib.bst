kind: meson

sources:
- kind: tar
  url: gnome_downloads:template-glib/3.36/template-glib-3.36.2.tar.xz
  ref: 0020f3a401888ce763b3a17508c2f58e91972a483a0c547afdb7ccbe25619948
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
