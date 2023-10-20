kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 45.0-7-g6ef36d35c74dbc1b0bb539e9a359c1a50c33676e

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
