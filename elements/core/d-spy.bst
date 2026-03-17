kind: meson

sources:
- kind: git_repo
  url: gnome:d-spy.git
  track: main
  ref: 50.0-1-g0e6d22d7d55cf1f5e7c90a8668a4e9422043b6d2

build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
