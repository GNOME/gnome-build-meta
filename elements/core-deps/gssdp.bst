kind: meson

sources:
- kind: git_repo
  url: gnome:gssdp.git
  track: master
  ref: gssdp-1.6.4-2-g634ffddc745a1d9682741c65f8ddd7ead6405fea

build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dsniffer=false
    -Dmanpages=false
