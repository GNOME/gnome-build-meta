kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/46/gnome-shell-extensions-46.rc.tar.xz
  ref: 5455a3e965d1ba39000947f4a2fd916984b0eb6bdbb358158ed6732b6c1143bd
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
