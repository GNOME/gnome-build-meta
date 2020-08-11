kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/3.37/gnome-shell-extensions-3.37.90.tar.xz
  ref: 36f2c5d906e07d3f1dc98beb44f5c6bdf48314fce369cc7952c8b19780047899
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
