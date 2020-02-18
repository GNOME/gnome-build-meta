kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/3.35/gnome-shell-extensions-3.35.91.tar.xz
  ref: 20c35f0061ab670a5c8840b77507fd4247c20053b96ec7949ea4a0c21c3fda4d
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
