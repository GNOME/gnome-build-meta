kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 50.0-1-g8977d4aee8d5f3eab088e6d7237c3cd487b9dd86

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
