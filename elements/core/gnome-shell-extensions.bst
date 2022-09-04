kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/43/gnome-shell-extensions-43.rc.tar.xz
  ref: 9ce09bdee33eba4d5ca5b68dcb06c0fa63946086867f9b27ebb47cd1d8bc5721
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
