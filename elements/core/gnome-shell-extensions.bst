kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/43/gnome-shell-extensions-43.1.tar.xz
  ref: adde04bd946a13113557e4c34c890bbe9077505a6a3f0755f17bea1c6e4a2d17
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
