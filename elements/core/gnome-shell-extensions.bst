kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/45/gnome-shell-extensions-45.rc.tar.xz
  ref: 551cefec5d0c5d06737785cdc295ccab183fcf2c61837ad529baa8d962dbafe0
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
