kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/3.36/gnome-shell-extensions-3.36.7.tar.xz
  ref: 79204ab679856716c9dc3bb6ac50d41486f5cfb4a49504ed66ed1591dde1c959
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
