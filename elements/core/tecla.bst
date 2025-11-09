kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 49.0-11-g388db5813da4507038375eee84626f0cb5a6c9ad
# FIXME: This needs to be kept in sync with the wrap file ideally,
# but this will do for now
# https://gitlab.gnome.org/GNOME/tecla/-/blob/main/subprojects/libgxdp.wrap?ref_type=heads
- kind: git_repo
  url: gnome:libgxdp.git
  directory: subprojects/libgxdp
  ref: b292f7f9b6ed019e98800386f233819be6481fc4

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
