kind: meson

sources:
- kind: tar
  url: gnome_downloads:gssdp/1.6/gssdp-1.6.3.tar.xz
  ref: 2fedb5afdb22cf14d5498a39a773ca89788a250fcf70118783df821e1f3f3446
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
