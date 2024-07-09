kind: meson

sources:
- kind: tar
  url: gnome_downloads:folks/0.15/folks-0.15.9.tar.xz
  ref: 2311b37355c351f33f163fdc394874a22a0a0682c319493d6d8a6e420711415f
build-depends:
- core-deps/python-dbusmock.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/evolution-data-server.bst
- sdk/libgee.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Deds_backend=true
    -Dtelepathy_backend=false
