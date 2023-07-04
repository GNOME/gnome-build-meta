kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/44/gnome-shell-extensions-44.0.tar.xz
  ref: 8c345e72f31a1e37f55063e0b15997301b01194ed698772fd87aeb50cbb101ab
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
