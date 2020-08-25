kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/3.37/gnome-shell-extensions-3.37.91.tar.xz
  ref: 8d62c67a395ca563fc33c3a210dec46a6c8115103952cc0d9207f3d2efdb9451
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
