kind: meson

sources:
- kind: git_tag
  url: gnome:gssdp.git
  track: master
  ref: gssdp-1.6.2-0-gc2d417d6a79f03c095e5730efd60015eb3109a82

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
    -Dmanpages=false
