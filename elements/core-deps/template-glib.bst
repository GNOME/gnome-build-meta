kind: meson

sources:
- kind: tar
  url: gnome_downloads:template-glib/3.35/template-glib-3.35.0.tar.xz
  ref: 3cf0272644b088b00b71ba9d0752e8e4e41dd0ffe49c577dbdcb7c1fe0018689
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
