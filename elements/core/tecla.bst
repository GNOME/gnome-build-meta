kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 51.0-4-g0f98bea9473ce51476fec126751dcd0be4647828

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
