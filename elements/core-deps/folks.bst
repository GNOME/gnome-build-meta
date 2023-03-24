kind: meson

sources:
- kind: git_tag
  url: gnome:folks.git
  track: master
  ref: 0.15.6-2-g977eca5f8edfff92772072c6d3abef8357cd7753

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
