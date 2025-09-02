kind: meson

sources:
- kind: tar
  url: gnome_downloads:template-glib/3.37/template-glib-3.37.1.tar.xz
  ref: d7ac4431d5947ba292086c7e47b88ae8acdbec0f8f8d38b2bdb888a0bdcc061c
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
