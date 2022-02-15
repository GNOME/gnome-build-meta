kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/42/gnome-shell-extensions-42.beta.tar.xz
  ref: 42d1f3b4431119edf8e1aeba24a00c802f62c50067e23db1288ca7c125ac22ef
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
