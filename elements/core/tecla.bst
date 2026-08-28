kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 51.beta-2-ge5dfc377f184ece7313818edc2f5b1c5f68c8762

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
