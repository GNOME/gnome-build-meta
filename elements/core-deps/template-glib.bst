kind: meson

sources:
- kind: tar
  url: gnome_downloads:template-glib/3.38/template-glib-3.38.0.tar.xz
  ref: 40d00dc223dcf2eb7f2ec422f7dec5a67373a0ca1101abca0f49c62f050cb312
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/sed.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
