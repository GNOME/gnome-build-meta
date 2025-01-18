kind: meson

sources:
- kind: git_repo
  url: gnome:gssdp.git
  track: master
  ref: gssdp-1.6.3-12-gdc3f0eadc3fa370c92f8f872d673e5d321df1838

build-depends:
- sdk/gi-docgen.bst
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
