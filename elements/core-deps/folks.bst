kind: meson

sources:
- kind: git_repo
  url: gnome:folks.git
  track: main
  ref: 0.15.9-16-g7062f4997012880dd7939374ae6a5f2bddaf5e34

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
