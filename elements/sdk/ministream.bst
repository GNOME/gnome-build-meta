kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:sp1rit/ministream.git
  track: main
  ref: 2dcbcf5bd53646f82a49e2ce1b2415bebcc19b17

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- sdk/gobject-introspection.bst

depends:
- sdk/glib.bst

variables:
  meson-local: >-
    -Das-compare=disabled
