kind: meson

sources:
- kind: git_repo
  url: gnome:d-spy.git
  track: main
  ref: 50.0-45-gbdd52f12f43678533e271bf23d1bfe89d22b3cd3

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
