kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/43/gnome-shell-extensions-43.0.tar.xz
  ref: e47c39d42782a72449bbf7deb36f03fd96cb59291946291391212e2fd98d5f93
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
