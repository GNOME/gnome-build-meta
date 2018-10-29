kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-shell-extensions/3.30/gnome-shell-extensions-3.30.1.tar.xz
  ref: b7301209ff143f9e83d43f9521ab53c9f8db0104ce562e4ec8a49c5e1cb13dbf
depends:
- core/gnome-menus.bst
- core/gnome-shell.bst
- sdk/librsvg.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dextension_set=classic
