kind: meson

sources:
- kind: git_tag
  url: gnome:folks.git
  track: master
  ref: 0.15.5-17-g995a3ba1e31b520b9d21c3500f0e5a0d0bce712f

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
