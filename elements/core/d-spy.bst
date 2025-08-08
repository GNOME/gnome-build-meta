kind: meson

sources:
- kind: git_repo
  url: gnome:d-spy.git
  track: main
  ref: 48.0-158-gc664b35f0e1813985bd9494d4ecb4ff217db0ce1

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
