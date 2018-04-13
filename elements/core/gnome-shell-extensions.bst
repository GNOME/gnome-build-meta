kind: meson
sources:
- url: https://download.gnome.org/sources/gnome-shell-extensions/3.28/gnome-shell-extensions-3.28.0.tar.xz
  kind: tar
  ref: 215dceb77ba355bdcc9e71dc72aa0debef3c9d7858e70d5094800182492eb503
depends:
- core-deps/librsvg.bst
- core-deps/meson.bst
- core/gnome-menus.bst
- core/gnome-shell.bst
- base.bst
variables:
  meson-local: -Dextension_set=classic
