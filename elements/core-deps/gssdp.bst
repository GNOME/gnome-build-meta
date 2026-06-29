kind: meson

sources:
- kind: tar
  url: gnome_downloads:gssdp/1.6/gssdp-1.6.6.tar.xz
  ref: 767d2275254ce0efeaeac64419ff9f4f0ad470d134ef672f5c556b2abb786bcb
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst

depends:
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dsniffer=false
    -Dmanpages=false
