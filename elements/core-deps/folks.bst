kind: meson

sources:
- kind: git_repo
  url: gnome:folks.git
  track: main
  ref: 0.15.12-13-g5eeb125729fb8966abe7a6c7f8ed3676dd2f862a

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- core-deps/python-dbusmock.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst

depends:
- core-deps/evolution-data-server.bst
- sdk/libgee.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Deds_backend=true
    -Dtelepathy_backend=false
