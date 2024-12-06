kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/47/gnome-shell-extensions-47.2.tar.xz
  ref: dd774a0291584917abde88bbc4eccf9244178e3c269ce0618d0495177c12652d
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
