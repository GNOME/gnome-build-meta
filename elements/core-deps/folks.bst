kind: meson

sources:
- kind: tar
  url: gnome_downloads:folks/0.14/folks-0.14.0.tar.xz
  ref: d6e778da637d3b33fd9a6b45115e8157d8868211dc08b943d1075b5eb7282bb9
build-depends:
- freedesktop-sdk.bst:components/python3-dbusmock.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/evolution-data-server.bst
- sdk/gobject-introspection.bst
- sdk/libgee.bst
- sdk/vala.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Deds_backend=true
    -Dtelepathy_backend=false
