kind: meson

sources:
- kind: tar
  url: gnome_downloads:folks/0.15/folks-0.15.3.tar.xz
  ref: 21d737faf093f4be065473ee70ca20885b9a2c3685941dba24c2239fd3c544a5
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
