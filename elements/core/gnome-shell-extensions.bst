kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/41/gnome-shell-extensions-41.beta.tar.xz
  ref: c80df073796d7a19eb1196960830e8c836c84d6ded49ed5b17ed13d4ef0443cb
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
