kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/47/gnome-shell-extensions-47.4.tar.xz
  ref: 543379ec5b0d04200ee62a1f6ba240716a09d75ad0addddb205be38ce8293f58
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
