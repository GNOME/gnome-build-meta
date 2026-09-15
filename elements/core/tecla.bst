kind: meson

sources:
- kind: tar
  url: gnome_downloads:tecla/51/tecla-51.0.tar.xz
  ref: ddf1a8555044171d0d84b580d6d541c3c621ae77996f6bc5edde598de2f8625b
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
