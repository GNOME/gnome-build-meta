kind: meson

sources:
- kind: git_repo
  url: gnome:d-spy.git
  track: main
  ref: 49.1-12-g200200364bebb21cd40bacc3f5ddd29cfc7ec1f4

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
