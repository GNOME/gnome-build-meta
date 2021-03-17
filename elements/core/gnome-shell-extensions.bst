kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/40/gnome-shell-extensions-40.rc.tar.xz
  ref: 918ba59261689acc8aa537d4f099d596005ed39843b00f56fd0ba5b505423439
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
