kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/3.35/gnome-shell-extensions-3.35.3.tar.xz
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
