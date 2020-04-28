kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/3.37/gnome-shell-extensions-3.37.1.tar.xz
  ref: d06f67e88e2040670d1e8e8414458c44778dcee6caddc338d47e9522ed11334d
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
