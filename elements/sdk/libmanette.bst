kind: meson

sources:
- kind: git_repo
  url: gnome:libmanette.git
  track: main
  ref: 0.2.11-42-gcf43018293f48c51b1ac4486bdea0e8b0f07ab71

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst

depends:
- sdk/glib.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/hidapi.bst
- freedesktop-sdk.bst:components/libevdev.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Ddoc=true
