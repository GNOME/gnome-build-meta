kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/47/gnome-shell-extensions-47.0.tar.xz
  ref: 50f04f7ba50eded10cea07a4705fb3363e86926d10011be5b25037566770834f
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
