kind: meson

sources:
- kind: tar
  url: gnome_downloads:tecla/50/tecla-50.0.tar.xz
  ref: 2542acb24850082e0ccf6aa17af9651db71d22f0e233fdbf5ed0cffe2e45bc06
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
