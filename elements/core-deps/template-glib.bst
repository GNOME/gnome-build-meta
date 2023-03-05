kind: meson

sources:
- kind: tar
  url: gnome_downloads:template-glib/3.36/template-glib-3.36.1.tar.xz
  ref: 3b167a17385ad745afbe20fadf8106c66d30c5bd746d5aa1d9bdb7e803f6a503
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
