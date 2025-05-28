kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/47/gnome-shell-extensions-47.5.tar.xz
  ref: 3a1122d151672ce2dee874fa88e27114c2bdbf210eb32ba07e842eb32754a4ca
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
