kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 51.0-3-gfe80f79119a9c2f93f48d3e1fcec8851ace95d9a

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
