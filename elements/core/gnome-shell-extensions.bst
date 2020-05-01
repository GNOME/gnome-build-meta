kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/3.36/gnome-shell-extensions-3.36.2.tar.xz
  ref: 978202de515cdb03a5885859c538366bca8fd78762ce98b172ac2c0126f8003f
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
