kind: meson

sources:
- kind: git_repo
  url: gnome:gssdp.git
  track: master
  ref: gssdp-1.6.3-8-ga52039909a2625626bf4d2c6b0169bac24bdd0f1

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
