kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/46/gnome-shell-extensions-46.4.tar.xz
  ref: 03ddc4ab865343c65bdd9a991a3b72c61e166a069c2dd7f9ec60ee5f0a8ba2b0
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
