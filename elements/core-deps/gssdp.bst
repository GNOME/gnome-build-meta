kind: meson

sources:
- kind: tar
  url: gnome_downloads:gssdp/1.5/gssdp-1.5.1.tar.xz
  ref: 53287227a3dcf099cecd89ed8b086f68aeb099933199bc7c8d6bee9bef81abf7
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
