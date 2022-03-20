kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/41/gnome-shell-extensions-41.2.tar.xz
  ref: ad9ba82f4cbd04726973b5e87afad18afdaa323860a0af3e7240f3a74d222f19
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
