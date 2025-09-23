kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 49.0-5-gb36ffb4407cd5780d4e92464903c4444b8f73d4e
# FIXME: This needs to be kept in sync with the wrap file ideally,
# but this will do for now
# https://gitlab.gnome.org/GNOME/tecla/-/blob/main/subprojects/libgxdp.wrap?ref_type=heads
- kind: git_repo
  url: gnome:libgxdp.git
  track: main
  directory: subprojects/libgxdp
  ref: e6c11f2812cad0a43e847ec97bfc1c67bf50be52

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
