kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 50.0-2-g2d560af8e1e081d01a64750af044d560730262f9

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
