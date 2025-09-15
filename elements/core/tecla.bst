kind: meson

sources:
- kind: tar
  url: gnome_downloads:tecla/49/tecla-49.0.tar.xz
  ref: 2ca424e402baf60cd6b13777703b701ebb1faf8f3d0f2f971144d823f651249f

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
