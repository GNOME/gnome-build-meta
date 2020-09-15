kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-shell-extensions/3.38/gnome-shell-extensions-3.38.0.tar.xz
  ref: f726f85bb398b082ad09a7ded306f22bd25d25898c7f18bd775df66400d3919f
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
