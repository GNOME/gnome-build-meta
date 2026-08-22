kind: meson

sources:
- kind: git_repo
  url: gnome:d-spy.git
  track: main
  ref: 50.0-35-ge7b9206ce651a7c33f782b166f9f4f153a75b8be

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/libdex.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
