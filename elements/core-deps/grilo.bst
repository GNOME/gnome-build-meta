kind: meson

sources:
- kind: tar
  url: gnome_downloads:grilo/0.3/grilo-0.3.19.tar.xz
  ref: 0869c81d19ab139c667d79567c14ddcb6cb5cbfc0108d04cade287eb29536706
build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/totem-pl-parser.bst
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Denable-test-ui=false
