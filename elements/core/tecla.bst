kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 46.0-9-g04a49cc37dddf0467f011cd50698657af9f256e6

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
