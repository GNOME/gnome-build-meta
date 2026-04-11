kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:sp1rit/ministream.git
  track: main
  ref: 0.99.0-1-g486d7f1a59e28f3cf36781d964f330e49c415714

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- sdk/gobject-introspection.bst

depends:
- sdk/glib.bst

variables:
  meson-local: >-
    -Das-compare=disabled
