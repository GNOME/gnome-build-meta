kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 50.0-0-g1b4e520188929c62f50266bf0fa8b252efc4bc57

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
