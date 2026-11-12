kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 51.0-6-gfa8d84e014451ee6f36c4650a6b37d475e1dc5aa

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
