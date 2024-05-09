kind: meson

sources:
- kind: git_repo
  url: gnome:gssdp.git
  track: master
  ref: gssdp-1.6.3-4-gec95fb082e669076e4c2f373b45f9dcc43271742

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
