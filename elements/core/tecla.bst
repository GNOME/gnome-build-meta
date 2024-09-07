kind: meson

sources:
- kind: git_repo
  url: gnome:tecla.git
  track: main
  ref: 47.rc-17-g4c13c709bd35b9d1354caf60b1db3868265e9957

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:bootstrap-import.bst
