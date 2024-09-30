kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 47.0-1-g58c4fed43e7d7daed203e7c5bf6be2c1de9888c5

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
