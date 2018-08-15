depends:
- core-deps/librsvg.bst
- core/gnome-menus.bst
- core/gnome-shell.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: meson
sources:
- kind: tar
  ref: a20dcb493189de60cb1b54350cc21e6f1e08b1d8a98820f3593e2e6d1f91d9bc
  url: https://download.gnome.org/sources/gnome-shell-extensions/3.29/gnome-shell-extensions-3.29.90.tar.xz
variables:
  meson-local: -Dextension_set=classic
