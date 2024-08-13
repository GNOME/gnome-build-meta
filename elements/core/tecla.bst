kind: meson

sources:
- kind: tar
  url: gnome_downloads:tecla/47/tecla-47.beta.tar.xz
  ref: 57af8e973ec6bb851c0f78d6ec0b0f506678cc51f5419fe1530840a918427843
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
