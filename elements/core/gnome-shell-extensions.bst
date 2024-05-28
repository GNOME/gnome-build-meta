kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/46/gnome-shell-extensions-46.2.tar.xz
  ref: d442e9d26925125ff215a5c134290495655380741daafbb37a3a99d6f0c7d86f
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core/gnome-menus.bst
- core/gnome-shell.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dextension_set=classic
