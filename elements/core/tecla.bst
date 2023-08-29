kind: meson

sources:
- kind: git_tag
  url: gnome:tecla.git
  track: main
  ref: 45.beta-18-g465b705d0067da3de12a5f734e32d6fe6083489b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
