kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 51.beta-1-gba1cdcf48d14a82b54297bb75bce6478d0f36c20

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
