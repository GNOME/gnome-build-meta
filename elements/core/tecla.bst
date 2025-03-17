kind: meson

sources:
- kind: tar
  url: gnome_downloads:tecla/48/tecla-48.0.2.tar.xz
  ref: 783d3464d2a2cf7eb1507649dbd9ff09ce24852c2a6c9a0d365db84063d3d401
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
