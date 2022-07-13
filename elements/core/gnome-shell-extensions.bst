kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/43/gnome-shell-extensions-43.alpha.tar.xz
  ref: ce8ab3b507f4342cfa67717fccbfd50fc2d6d2c1ce56edd2be74ed0f26b096ef
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
