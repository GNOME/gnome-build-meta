kind: meson
sources:
- kind: git_repo
  url: gnome:adwaita-icon-theme.git
  track: master
  ref: 51.0-2-g82d305723107d2ab619c0a4e4ec3136558bb4fe7
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
depends:
- sdk/gtk.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
