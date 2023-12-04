kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/45/gnome-shell-extensions-45.2.tar.xz
  ref: ee32f6387a2d18adbff7a956689bc747866b4a8712d73790c002abeae4ccaaaf
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
