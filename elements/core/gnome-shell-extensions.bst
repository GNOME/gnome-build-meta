kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/3.33/gnome-shell-extensions-3.33.2.tar.xz
depends:
- core/gnome-menus.bst
- core/gnome-shell.bst
- sdk/librsvg.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dextension_set=classic
