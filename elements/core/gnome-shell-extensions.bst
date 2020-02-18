kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/3.35/gnome-shell-extensions-3.35.91.tar.xz
  ref: 9c5d45b08b675e70488de5688fb93e480bb54e62a4c7b3b7a34d7b90dc19cc71
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
