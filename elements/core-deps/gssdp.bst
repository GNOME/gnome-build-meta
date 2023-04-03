kind: meson

sources:
- kind: git_tag
  url: gnome:gssdp.git
  track: master
  ref: gssdp-1.6.2-1-g27863d5d592994ddf13b3f0e6ea7f11c5e928f50

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
