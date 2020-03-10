kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/3.36/gnome-shell-extensions-3.36.0.tar.xz
  ref: b5b29f974d05756130c785bf8e111c0ee43040161947f56bdd3a36871933b1e6
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
