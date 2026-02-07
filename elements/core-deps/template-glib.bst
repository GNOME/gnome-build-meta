kind: meson

sources:
- kind: tar
  url: gnome_downloads:template-glib/3.39/template-glib-3.39.0.tar.xz
  ref: f388234d65ec3de89e3431d840eb078477ca5407cff26400cce454eb27ef1939
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
