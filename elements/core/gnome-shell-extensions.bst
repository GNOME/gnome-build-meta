kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-shell-extensions/3.30/gnome-shell-extensions-3.30.1.tar.xz
depends:
- core/gnome-menus.bst
- core/gnome-shell.bst
- sdk/librsvg.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dextension_set=classic
