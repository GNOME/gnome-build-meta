kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/42/gnome-shell-extensions-42.rc.tar.xz
  ref: ba7b498e8ee655a2fa05c6fdb0572d9d437b0bbb077fc157f3c0cabfb8e8a373
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
