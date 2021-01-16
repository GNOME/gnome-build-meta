kind: meson
sources:
- kind: tar
  url: gnome_downloads:template-glib/3.34/template-glib-3.34.0.tar.xz
  ref: 216bef6ac3607666b8ca72b936467f7020ce6421c02755c301d079576c9c3dfd
build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst
