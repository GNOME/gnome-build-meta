kind: meson

sources:
- kind: tar
  url: gnome_downloads:template-glib/3.34/template-glib-3.34.1.tar.xz
  ref: 9ec9b71e04d4f5cb14f755ef790631cd0b45c0603e11c836fc7cfd9e268cd07a
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
