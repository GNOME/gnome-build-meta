kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 49.0-14-g251732abd002cf0bd0ec4ed2cf2382a3d72e33a4

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
