kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/3.34/gnome-shell-extensions-3.34.2.tar.xz
  ref: a1e16e75a06ea511435a6f7478de92aff21d02d4e1d59ec8ce7fb6396819b4b8
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
