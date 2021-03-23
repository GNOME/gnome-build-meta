kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/40/gnome-shell-extensions-40.0.tar.xz
  ref: 172d85b2819ac9825c0ce91ed7324394d2e03b6569c4e8b60edd8a9e2f990a96
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
