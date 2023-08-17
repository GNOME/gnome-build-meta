kind: meson
sources:
- kind: git_tag
  url: gnome:gnome-shell-extensions.git
  track: main
  ref: 45.beta-5-g5bf98cbe8fe2c06d65bd2c7762b18e00b9dd14dd
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
