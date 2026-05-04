kind: meson

sources:
- kind: git_repo
  url: gnome:folks.git
  track: main
  ref: 0.15.12-6-gbb8cc4e53fea4d49b0f6a949c43cc1c89720998e

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
