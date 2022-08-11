kind: meson

sources:
- kind: tar
  url: gnome_downloads:gssdp/1.5/gssdp-1.5.2.tar.xz
  ref: eb40ac7274d8dc06d1a275bc8813257d9960e78a8a6d9acf3e017aa16a17161e
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
