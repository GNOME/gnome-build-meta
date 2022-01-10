kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/42/gnome-shell-extensions-42.alpha.tar.xz
  ref: 873f6e7b8e3fc3d4bfd115fb947dae39ba76ae37f9e418313497f3fae2c87535
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
