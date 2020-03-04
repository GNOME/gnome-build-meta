kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/3.35/gnome-shell-extensions-3.35.92.tar.xz
  ref: 420a6f4a57b102271156a04b4a4817f1bab2f4c4182eee3859fdd90c6de1212a
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
