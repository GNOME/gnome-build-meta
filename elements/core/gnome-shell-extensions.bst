kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/41/gnome-shell-extensions-41.rc.1.tar.xz
  ref: 18d1dec9bb1c9d133694e60eaa36b7c331b178b940fc3d571174f81ec9bf337a
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
