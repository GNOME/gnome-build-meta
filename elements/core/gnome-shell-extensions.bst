kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-shell-extensions/3.29/gnome-shell-extensions-3.29.3.tar.xz
  ref: e4eb0b24aaa01f8446a3489e9b90b166565fe308d08a26c0c39706095b55203a
depends:
- core-deps/librsvg.bst
- core/gnome-menus.bst
- core/gnome-shell.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dextension_set=classic
