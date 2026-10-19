kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-characters.git
  track: main
  ref: 51.0-4-g0be7b4b26c7ec37a7c0be304eacd29e2426bc929

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
