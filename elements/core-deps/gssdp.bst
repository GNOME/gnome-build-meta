kind: meson

sources:
- kind: git_repo
  url: gnome:gssdp.git
  track: master
  ref: gssdp-1.6.3-0-g28c388aa45698dcc09ba24e8de849653e9eedf8c

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
