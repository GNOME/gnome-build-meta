kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/3.37/gnome-shell-extensions-3.37.2.tar.xz
  ref: 76677270c0a73bbe798fe9858d2d59b1ab3b1ca3735e6063011397380dd1a12f
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
