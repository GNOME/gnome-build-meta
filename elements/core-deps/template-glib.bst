kind: meson

sources:
- kind: tar
  url: gnome_downloads:template-glib/3.37/template-glib-3.37.0.tar.xz
  ref: 21647d5e0502bd67d5ff5fb71b9f070c377e9e7bf7facf12e08c0b26d1170ce5
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
