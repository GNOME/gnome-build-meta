kind: meson

sources:
- kind: git_tag
  url: gnome:gssdp.git
  track: master
  ref: gssdp-1.6.0-0-g6eeaf27aec6ff11f325ff633b52bd56dbc1435aa

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
