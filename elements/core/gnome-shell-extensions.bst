kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/3.34/gnome-shell-extensions-3.34.0.tar.xz
depends:
- core/gnome-menus.bst
- core/gnome-shell.bst
- sdk/librsvg.bst
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: -Dextension_set=classic
