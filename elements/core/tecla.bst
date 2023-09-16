kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 45.0-0-gc1291d6fe170ff22925933ab1c0085598d9c34db

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
