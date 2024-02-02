kind: meson

sources:
- kind: git_repo
  url: gnome:folks.git
  track: master
  ref: 0.15.7-4-g496f08dca9b3b187d3a43fa9d8a8b4b3fe00ed52

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
