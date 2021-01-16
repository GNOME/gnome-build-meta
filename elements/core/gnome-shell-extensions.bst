kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/40/gnome-shell-extensions-40.alpha.1.tar.xz
  ref: c7f1278f8c9a76c7c997407fe06ad6304b8b1f429750a648dcbfaf219d5e129f
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
