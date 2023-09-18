kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/45/gnome-shell-extensions-45.0.tar.xz
  ref: 239bf89ff52794f8d5e86acd85fbfe5c24be8ce167c57690db2efd587c339fd6
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
