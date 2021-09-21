kind: meson

sources:
- kind: tar
  url: gnome_downloads:gssdp/1.4/gssdp-1.4.0.1.tar.xz
  ref: 8676849d57fb822b8728856dbadebf3867f89ee47a0ec47a20045d011f431582
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
