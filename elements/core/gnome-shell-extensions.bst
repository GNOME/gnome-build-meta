kind: autotools
sources:
- url: https://download.gnome.org/sources/gnome-shell-extensions/3.27/gnome-shell-extensions-3.27.1.tar.xz
  kind: tar
  ref: ad5a1869db1acfc60bb4f00e9ba81012ed60fda87b41e4566d725f9f012035ad
depends:
- core-deps/librsvg.bst
- core-deps/meson.bst
- core/gnome-menus.bst
- core/gnome-shell.bst
- base.bst
variables:
  meson-local: -Dextension_set=classic
