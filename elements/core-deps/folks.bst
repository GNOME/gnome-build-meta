kind: meson

sources:
- kind: git_repo
  url: gnome:folks.git
  track: main
  ref: 0.15.9-10-g18a38b7a24832208ed3a2ff2388a6965c58bc767

build-depends:
- core-deps/python-dbusmock.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/evolution-data-server.bst
- sdk/libgee.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Deds_backend=true
    -Dtelepathy_backend=false
