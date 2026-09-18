kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-characters.git
  track: main
  ref: 51.0-1-g7b32e5eeda0c88a48b7b27ee8c16ccf4a8bff7f2

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/itstool.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
