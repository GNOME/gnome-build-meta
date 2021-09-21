kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/41/gnome-shell-extensions-41.0.tar.xz
  ref: d84faac1448b38f975d9c19490c5928afc5c5a2c49dd7e7f81af690f9466fc68
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
