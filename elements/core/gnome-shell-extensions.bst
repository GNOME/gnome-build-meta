kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/40/gnome-shell-extensions-40.5.tar.xz
  ref: b8097f1d4972f75d7e405f15305e80a0865de283f0a261e40f6c8fc7907fcf29
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
