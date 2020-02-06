kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/3.35/gnome-shell-extensions-3.35.3.tar.xz
  ref: e47db8fcd349bb0605c20eda0d14a3be517515f8f6a7cf2790b4c473d77ed998
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
