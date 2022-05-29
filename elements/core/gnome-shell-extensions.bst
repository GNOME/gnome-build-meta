kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/42/gnome-shell-extensions-42.2.tar.xz
  ref: 65718440aa1c2f17bb09222ff802699f641fd51279221f04cb19193968ec0b30
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
