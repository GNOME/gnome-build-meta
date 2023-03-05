kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/44/gnome-shell-extensions-44.rc.tar.xz
  ref: 9439a7032da01c08e4b53835004f4ab7a3f400d50dd6e1347a63d9dfaf807340
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
