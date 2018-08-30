kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-shell-extensions/3.29/gnome-shell-extensions-3.29.91.tar.xz
  ref: ce0c477e6d880d7be2e937533089735ea33ce551b60c1b8466ec8dbcfb95991f
depends:
- core/gnome-menus.bst
- core/gnome-shell.bst
- sdk/librsvg.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dextension_set=classic
