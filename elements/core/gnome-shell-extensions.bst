kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-shell-extensions/3.30/gnome-shell-extensions-3.30.0.tar.xz
  ref: 0538ca528ceaa2f5c6e9ff7e356654fe712b305ec0ae6575934830ce0ecadb54
depends:
- core/gnome-menus.bst
- core/gnome-shell.bst
- sdk/librsvg.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dextension_set=classic
