kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 49.0-11-g388db5813da4507038375eee84626f0cb5a6c9ad

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
