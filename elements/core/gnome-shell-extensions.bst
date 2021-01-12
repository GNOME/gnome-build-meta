kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/3.38/gnome-shell-extensions-3.38.2.tar.xz
  ref: 57a44279a750215af51ff29162b7b7a7b287f6afa0a28bb51d3b27b2cb49f643
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
