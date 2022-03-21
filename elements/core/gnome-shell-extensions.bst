kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/40/gnome-shell-extensions-40.7.tar.xz
  ref: 0d6791ae94be3ce2d34fbb0cf400a643a4d6999ffa47ace646acdefd178c54d9
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
