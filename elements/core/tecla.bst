kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 45.0-8-gfd89f761d113d1425a53c052a0531fb1aacac46b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
