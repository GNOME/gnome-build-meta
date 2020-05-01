kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/3.36/gnome-shell-extensions-3.36.2.tar.xz
  ref: de18927a7d0f5652628d97f03e102c84e576b9c873a878b8e1a53c21183b5039
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
