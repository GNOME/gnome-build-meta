kind: meson

sources:
- kind: git_repo
  url: gnome:folks.git
  track: master
  ref: 0.15.7-10-gf19dfe54ca226973fe01bc89f6eafe950dbb78a6

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
