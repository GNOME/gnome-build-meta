kind: meson

sources:
- kind: git_tag
  url: gnome:gssdp.git
  track: master
  ref: gssdp-1.6.0-4-gd755b336bf0ee02497a833b017b5d1055ba05b12

build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dsniffer=false
