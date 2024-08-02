kind: meson
sources:
- kind: git_repo
  url: gnome:gnome-shell-extensions.git
  track: main
  ref: 47.alpha-7-g017c6470b9a6618a1a95454a651e0ab1bd85d306
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core/gnome-menus.bst
- core/gnome-shell.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dextension_set=classic
