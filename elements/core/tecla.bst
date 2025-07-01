kind: meson

sources:
- kind: tar
  url: gnome_downloads:tecla/48/tecla-48.0.2.tar.xz
  ref: 783d3464d2a2cf7eb1507649dbd9ff09ce24852c2a6c9a0d365db84063d3d401
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
