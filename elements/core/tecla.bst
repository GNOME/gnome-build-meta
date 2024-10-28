kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 47.0-4-g5c194fdaad7c474c9d3e713a0f289b98aa1d2c63

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
