kind: meson
sources:
- kind: git_tag
  url: gnome:gnome-shell-extensions.git
  track: main
  ref: 43.0-1-g77b35dcda3f5cc929b41eb85a29b50aa7405ad17
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
