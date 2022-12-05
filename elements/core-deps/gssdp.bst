kind: meson

sources:
- kind: tar
  url: gnome_downloads:gssdp/1.4/gssdp-1.4.1.tar.xz
  ref: 57249654357d3d51b140315169a24c0671de7aa52c6f75c8c5c9abd40a352529
build-depends:
- sdk-deps/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Dsniffer=false
