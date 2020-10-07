kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/3.38/gnome-shell-extensions-3.38.1.tar.xz
  ref: 9da38631ffb804284753e5d592f88b7953215cb8967d7a1c4f652d289f040c94
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
