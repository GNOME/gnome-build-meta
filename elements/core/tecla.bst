kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 49.0-12-gf04e04d998e3477f9ea194f584ac8218d1a553ab

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
