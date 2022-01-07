kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/41/gnome-shell-extensions-41.1.tar.xz
  ref: d0e6f2273f08d52d925fc2bb66b47b28e5ef50d1b8a14020877c662423d507d3
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
