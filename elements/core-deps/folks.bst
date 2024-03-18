kind: meson

sources:
- kind: tar
  url: gnome_downloads:folks/0.15/folks-0.15.8.tar.xz
  ref: 954a6afb3e378f01d310fd443790f235cb0eb71e2139cff4f05f09ab725e49c2
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/python3-dbusmock.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/evolution-data-server.bst
- sdk/libgee.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Deds_backend=true
    -Dtelepathy_backend=false
