kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/46/gnome-shell-extensions-46.alpha.tar.xz
  ref: a80b87d33adf012045145b729ba918d572cdc1e8de091fbb973e57db77495ba7
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
