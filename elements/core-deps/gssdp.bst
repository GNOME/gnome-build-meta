kind: meson

sources:
- kind: tar
  url: gnome_downloads:gssdp/1.3/gssdp-1.3.1.tar.xz
  ref: affbf145c26e02dda9d31f9da9fd5182bd2cc36565ab8ee2e877567b2fd206cd
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
