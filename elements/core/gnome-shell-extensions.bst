kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/46/gnome-shell-extensions-46.1.tar.xz
  ref: c5ba50700da77a986f0060beedacfc017e7ec82283f2a6384842a0807bc4553f
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
