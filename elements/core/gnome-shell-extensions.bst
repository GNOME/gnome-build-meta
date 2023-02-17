kind: meson
sources:
- kind: git_tag
  url: gnome:gnome-shell-extensions.git
  track: main
  ref: 44.beta-0-gffa9806d403c3306b858eb61ebc21c8ed4d5d459
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
