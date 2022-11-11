kind: meson

sources:
- kind: git_tag
  url: gnome:gssdp.git
  track: master
  ref: gssdp-1.6.1-2-ge0b477c37c18b0de50cc62a549e639c7527bba25

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
