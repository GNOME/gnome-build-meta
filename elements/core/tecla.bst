kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 50.0-7-gf8f15df687c4c8f840e7abe57945390c33bcdd38

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
